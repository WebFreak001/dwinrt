module Windows.UI.Xaml.Automation.Text;

import dwinrt;

enum TextPatternRangeEndpoint
{
	Start = 0,
	End = 1
}

enum TextUnit
{
	Character = 0,
	Format = 1,
	Word = 2,
	Line = 3,
	Paragraph = 4,
	Page = 5,
	Document = 6
}