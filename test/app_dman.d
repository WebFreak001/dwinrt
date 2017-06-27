import core.runtime;

import dwinrt;

import Windows.ApplicationModel.Activation;
import Windows.UI.Xaml;
import Windows.UI.Xaml.Controls;
import Windows.UI.Xaml.Media;
import Windows.UI.Xaml.Media.Imaging;
import Windows.UI.Core;
import Windows.Storage;
import Windows.Storage.Pickers;
import Windows.Storage.Streams;
import Windows.Graphics.Imaging;
import Windows.UI.Xaml.Markup;

import std.algorithm;
import std.math;

class App : ApplicationT!App
{
	override void OnLaunched(LaunchActivatedEventArgs)
	{
		auto window = Window.Current;
		window.Content = cast(UIElement) XamlReader.Load(hstring(`
		<Grid xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation">
			<Grid Margin="0" HorizontalAlignment="Center" VerticalAlignment="Center" Height="437.333" Width="236">
				<Path Data="M352.093,143.738 L387.038,83.9302 C387.038,83.9302 360.158,65.5802 337.981,53.3466 C313.078,39.6091 300.851,35.3332 300.851,35.3332" Height="109.337" Margin="0,24.83,9.167,0" Stretch="Fill" Stroke="Black" UseLayoutRounding="False" VerticalAlignment="Top" HorizontalAlignment="Right" Width="88.5" StrokeThickness="3"/>
				<Path Data="M218.928,164.428 L162,98 C162,98 189.124,75.5953 209.412,60.7191 C232.523,43.7731 248.667,37.3333 248.667,37.3333" Height="128" Margin="0,26.833,0,0" Stretch="Fill" Stroke="Black" UseLayoutRounding="False" VerticalAlignment="Top" HorizontalAlignment="Left" Width="88" StrokeThickness="3"/>
				<Path Data="M248.965,354.115 L240.667,394 L252,434.333" HorizontalAlignment="Left" Height="80.999" Margin="79,0,0,12.834" Stretch="Fill" Stroke="Black" UseLayoutRounding="False" VerticalAlignment="Bottom" Width="12.333" StrokeThickness="3"/>
				<Path Data="M300.572,344.862 L318.667,383.333 L306.667,435" HorizontalAlignment="Right" Height="91" Margin="0,0,78,12.167" Stretch="Fill" Stroke="Black" UseLayoutRounding="False" VerticalAlignment="Bottom" Width="18.833" StrokeThickness="3"/>
				<Path Data="M207.044,99.3523 C207.044,99.3523 216.158,144 216.158,233.334 C216.158,322.667 203.711,362.02 203.711,362.02 C203.711,362.02 393.221,380.001 390.568,224.667 C388.143,82.666 207.044,99.3523 207.044,99.3523 z" Fill="#FFE43030" Margin="41.487,88.249,5.306,83.846" Stretch="Fill" Stroke="Black" UseLayoutRounding="False" StrokeThickness="2"/>
				<Path Data="M254.497,151.309 C254.497,151.309 264.096,183.667 262.096,234.333 C260.096,285 251.975,316.64 251.975,316.64 C251.975,316.64 345.751,312.187 342.914,227.758 C340.026,141.804 254.497,151.309 254.497,151.309 z" Fill="White" Margin="90.332,140.511,53.741,128.197" Stretch="Fill" Stroke="Black" UseLayoutRounding="False" StrokeThickness="2"/>
				<Ellipse Fill="White" Height="56" Margin="76,112,114,0" Stroke="Black" VerticalAlignment="Top" StrokeThickness="2"/>
				<Ellipse Fill="White" HorizontalAlignment="Right" Height="56" Margin="0,123,61,0" Stroke="Black" VerticalAlignment="Top" Width="46" StrokeThickness="2"/>
				<Ellipse Fill="Black" HorizontalAlignment="Right" Height="34.553" Margin="0,142.9,63.024,0" VerticalAlignment="Top" Width="25" RenderTransformOrigin="0.5,0.5" UseLayoutRounding="False">
					<Ellipse.RenderTransform>
						<CompositeTransform Rotation="21.221"/>
					</Ellipse.RenderTransform>
				</Ellipse>
				<Ellipse Fill="White" Height="26" Margin="41,0,0,0" Stroke="Black" VerticalAlignment="Bottom" HorizontalAlignment="Left" Width="50" StrokeThickness="2"/>
				<Ellipse Fill="White" HorizontalAlignment="Right" Height="26" Margin="0,0,49,0" Stroke="Black" VerticalAlignment="Bottom" Width="43" StrokeThickness="2"/>
				<Ellipse Fill="White" Height="53" Margin="110,0,96,0" Stroke="Black" VerticalAlignment="Top" StrokeThickness="2"/>
				<Ellipse Fill="White" HorizontalAlignment="Left" Height="53" Margin="86,0,0,0" Stroke="Black" VerticalAlignment="Top" Width="30" StrokeThickness="2"/>
				<Ellipse Fill="Black" Height="34.553" Margin="94.643,130.9,116.357,0" VerticalAlignment="Top" RenderTransformOrigin="0.5,0.5" UseLayoutRounding="False">
					<Ellipse.RenderTransform>
						<CompositeTransform Rotation="21.221"/>
					</Ellipse.RenderTransform>
				</Ellipse>
			</Grid>
		</Grid>`).handle).as!IUIElement;
		window.Activate();
	}
}

void run()
{
	Application.Start((ApplicationInitializationCallbackParams p) { make!App; }
	.handler!ApplicationInitializationCallback);
}

// entrypoint

extern (Windows) int WinMain(HINSTANCE hInstance, HINSTANCE hPrevInstance,
		LPSTR lpCmdLine, int nCmdShow)
{
	int result;

	try
	{
		Runtime.initialize();
		result = myWinMain(hInstance, hPrevInstance, lpCmdLine, nCmdShow);
		Runtime.terminate();
	}
	catch (Throwable e)
	{
		import std.string : toStringz;

		Debug.WriteLine("Exception:\n%s", e);
		MessageBoxA(null, e.toString().toStringz(), null, MB_ICONEXCLAMATION);
		result = 1; // failed
	}

	return result;
}

int myWinMain(HINSTANCE hInstance, HINSTANCE hPrevInstance, LPSTR lpCmdLine, int nCmdShow)
{
	init_apartment();
	run();
	uninit_apartment();
	return 0;
}
