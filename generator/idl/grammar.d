module idl.grammar;

import pegged.grammar;

// http://www.ing.iac.es/~docs/external/corba/idl-spec.pdf
mixin(grammar(`
IDL:
	# Added cpp_quote
	specification     <  ( import_ / cpp_quote )* definition+ (eoi / definition)
	definition        <  type_dcl ";"
	                   / const_dcl ";"
	                   / except_dcl ";"
	# Made semicolons after blocks optional
	                   / interface_ ";"?
	                   / declare ";"?
	                   / module_ ";"?
	                   / delegate_ ";"
	                   / value ";"
	                   / type_id_dcl ";"
	# Added apicontract
	                   / apicontract ( ";" / "{" "}" )
	                   / type_prefix_dcl ";"
	                   / event ";"
	                   / component ";"
	                   / home_dcl ";"
	# Added attributed definitions
	                   / definition_attribute+ definition
	definition_attribute < "[" definition_content ( "," definition_content )* "]"
	definition_content < contract
	                   / activatable
	                   / composable
	                   / deprecation
	                   / uuid
	                   / exclusiveto
	                   / from_contract
	                   / threading
	                   / static_
	                   / marshaling_behavior
	                   / helpstring
	                   / contractversion
	                   / version_
	                   / attribute_call
	                   / scoped_name
	contract          <  "contract" "(" scoped_name "," digit ( "." digit )? ")"
	contractversion   <  "contractversion" "(" digit ( "." digit )? ")"
	version_          <  "version" "(" digit ( "." digit )? ")"
	activatable       <  "activatable" "(" scoped_name "," ( scoped_name "," )? digit ( "." digit )? ")"
	composable        <  "composable" "(" scoped_name "," identifier "," scoped_name "," digit ( "." digit )? ")"
	deprecation       <  "deprecated" "(" string_literal "," identifier "," scoped_name "," digit ( "." digit )? ")"
	uuid              <  "uuid" "(" uuidOct "-" uuidQuad "-" uuidQuad "-" uuidQuad "-" uuidSep ")"
	uuidQuad          <~ [0-9a-fA-F] [0-9a-fA-F] [0-9a-fA-F] [0-9a-fA-F]
	uuidOct           <~ [0-9a-fA-F] [0-9a-fA-F] [0-9a-fA-F] [0-9a-fA-F] [0-9a-fA-F] [0-9a-fA-F] [0-9a-fA-F] [0-9a-fA-F]
	uuidSep           <~ [0-9a-fA-F] [0-9a-fA-F] [0-9a-fA-F] [0-9a-fA-F] [0-9a-fA-F] [0-9a-fA-F] [0-9a-fA-F] [0-9a-fA-F] [0-9a-fA-F] [0-9a-fA-F] [0-9a-fA-F] [0-9a-fA-F]
	exclusiveto       <  "exclusiveto" "(" scoped_name ")"
	from_contract     <  "from_contract" "(" scoped_name "," contract_version ")"
	contract_version  <  "range" "(" digit ( "." digit )? "," digit ( "." digit )? ")" / digit ( "." digit )?
	threading         <  "threading" "(" identifier ")"
	static_           <  "static" "(" scoped_name "," scoped_name "," digit ( "." digit )? ")"
	marshaling_behavior <  "marshaling_behavior" "(" identifier ")"
	helpstring        <  "helpstring" "(" string_literal ")"
	attribute_call    <  scoped_name ( "(" const_exp ( "," const_exp )* ")" )?
	# Added cpp_quote
	cpp_quote         <  "cpp_quote" "(" string_literal ")"
	# Added apicontract
	apicontract       <  "apicontract" identifier
	type              <  scoped_name ( "<" type ( "," type )* ">" )? ( "*" )*
	# Added declare
	declare           <  "declare" "{" declare_definition+ "}"
	declare_definition < declare_interface ";"
	declare_interface < "interface" type
	# Added namespace
	module_           <  ("module" / "namespace") scoped_name "{" definition+ "}"
	interface_        <  interface_dcl / forward_dcl
	interface_dcl     <  interface_header "{" interface_body "}"
	# Added delegate
	delegate_         <  "delegate" ( op_dcl / identifier )
	# Added runtimeclass
	forward_dcl       <  ( "abstract" / "local" )? ( "interface" / "runtimeclass") identifier
	interface_header  <  ( "abstract" / "local" )? ( "interface" / "runtimeclass") identifier interface_inheritance_spec? interface_require_spec?
	interface_body    <  export_*
	export_           <  type_dcl ";"
	                   / const_dcl ";"
	                   / except_dcl ";"
	                   / attr_dcl ";"
	                   / op_dcl ";"
	                   / type_id_dcl ";"
	                   / type_prefix_dcl ";"
	# Added interface + attributes
	                   / definition_attribute* declare_interface ";"
	interface_inheritance_spec < ":" type ( "," type )*
	interface_require_spec < "requires" type ( "," type )*
	interface_name    <  scoped_name
	scoped_name       <  "."? identifier ( "." identifier )*
	value             <  value_dcl / value_abs_dcl / value_box_dcl / value_forward_dcl
	value_forward_dcl <  "abstract"? "valuetype" identifier
	value_box_dcl     <  "valuetype" identifier type_spec
	value_abs_dcl     <  "abstract" "valuetype" identifier value_inheritance_spec? "{" export_* "}"
	value_dcl         <  value_header "{" value_element* "}"
	value_header      <  "custom"? "valuetype" identifier value_inheritance_spec?
	value_inheritance_spec <  ( ":" "truncatable"? value_name ( "," value_name )* )? ("supports" interface_name ( "," interface_name )* )?
	value_name        <  scoped_name
	value_element     <  export_ / state_member / init_dcl
	state_member      <  ("public" / "private") type_spec declarators ";"
	init_dcl          <  "factory" identifier "(" init_param_decls? ")" raises_expr? ";"
	init_param_decls  <  init_param_decl ( "," init_param_decl )*
	init_param_decl   <  init_param_attribute param_type_spec simple_declarator
	init_param_attribute <  "in"
	const_dcl         <  "const" type identifier "=" ( "(" type ")" )? const_exp
	const_exp         <  or_expr
	or_expr           <  xor_expr / or_expr "|" xor_expr
	xor_expr          <  and_expr / xor_expr "^" and_expr
	and_expr          <  shift_expr / and_expr "&" shift_expr
	shift_expr        <  add_expr
	                   / shift_expr ">>" add_expr
	                   / shift_expr "<<" add_expr
	add_expr          <  mult_expr
	                   / add_expr "+" mult_expr
	                   / add_expr "-" mult_expr
	mult_expr         <  unary_expr
	                   / mult_expr "*" unary_expr
	                   / mult_expr "/" unary_expr
	                   / mult_expr "%" unary_expr
	unary_expr        <  unary_operator primary_expr
	                   / primary_expr
	unary_operator    <  "-" / "+" / "~"
	primary_expr      <  scoped_name / literal / "(" const_exp ")"
	literal           <  integer_literal
	                   / string_literal
	                   / wide_string_literal
	                   / character_literal
	                   / wide_character_literal
	                   / fixed_pt_literal
	                   / floating_pt_literal
	                   / boolean_literal
	boolean_literal   <  "TRUE" / "FALSE"
	positive_int_const <  const_exp
	type_dcl          <  "typedef" type_declarator
	                   / struct_type
	                   / union_type
	                   / enum_type
	                   / "native" simple_declarator
	                   / constr_forward_decl
	type_declarator   <  type_spec declarators
	type_spec         <  simple_type_spec / constr_type_spec
	simple_type_spec  <  base_type_spec / template_type_spec / scoped_name
	base_type_spec    <  floating_pt_type
	                   / integer_type
	                   / char_type
	                   / wide_char_type
	                   / boolean_type
	                   / octet_type
	                   / any_type
	                   / object_type
	                   / value_base_type
	template_type_spec <  sequence_type
	                   / string_type
	                   / wide_string_type
	                   / fixed_pt_type
	constr_type_spec  <  struct_type / union_type / enum_type
	declarators       <  declarator ( "," declarator )*
	declarator        <  simple_declarator / complex_declarator
	simple_declarator <  identifier
	complex_declarator <  array_declarator
	floating_pt_type  <  "float" / "FLOAT" / "double" / "DOUBLE" / "long" "double" / "LONG" "DOUBLE"
	integer_type      <  signed_int / unsigned_int
	signed_int        <  signed_short_int / signed_long_int / signed_longlong_int
	signed_short_int  <  "short"
	signed_long_int   <  "long"
	signed_longlong_int <  "long" "long"
	unsigned_int      <  unsigned_short_int / unsigned_long_int / unsigned_longlong_int
	unsigned_short_int <  "unsigned" "short"
	unsigned_long_int <  "unsigned" "long"
	unsigned_longlong_int <  "unsigned" "long" "long"
	char_type         <  "char"
	wide_char_type    <  "wchar"
	boolean_type      <  "boolean"
	octet_type        <  "octet"
	any_type          <  "any"
	object_type       <  "Object"
	struct_type       <  "struct" identifier "{" member_list "}"
	member_list       <  member+
	member            <  type_spec declarators ";"
	union_type        <  "union" identifier "switch" "(" switch_type_spec ")" "{" switch_body "}"
	switch_type_spec  <  integer_type / char_type / boolean_type / enum_type / scoped_name
	switch_body       <  case_+
	case_             <  case_label+ element_spec ";"
	case_label        <  "case" const_exp ":" / "default" ":"
	element_spec      <  type_spec declarator
	enum_type         <  "enum" identifier "{" enumerator ( "," enumerator )* "}"
	# Added attribute & enum values
	enumerator        <  definition_attribute* identifier ( "=" const_exp )?
	sequence_type     <  "sequence" "<" simple_type_spec "," positive_int_const ">" / "sequence" "<" simple_type_spec ">"
	string_type       <  "string" "<" positive_int_const ">" / "string"
	wide_string_type  <  "wstring" "<" positive_int_const ">" / "wstring"
	array_declarator  <  identifier fixed_array_size+
	fixed_array_size  <  "[" positive_int_const "]"
	attr_dcl          <  readonly_attr_spec / attr_spec
	except_dcl        <  "exception" identifier "{" member* "}"
	op_dcl            <  op_attribute* op_type_spec identifier parameter_dcls raises_expr? context_expr?
	# Added propget, propput, eventadd, eventremove, default_overload, overload & square brackets
	op_attribute      <  "[" ( "oneway"
	                   / "propget"
	                   / "propput"
	                   / "eventadd"
	                   / "eventremove"
	                   / "default_overload"
	                   / op_overload_attribute
										 / deprecation
										 / op_range_attribute
										 / op_size_is_attribute
	                   ) "]"
	op_overload_attribute < "overload" "(" string_literal ")"
	op_range_attribute < "range" "(" const_exp "," const_exp ")"
	op_size_is_attribute < "size_is" "(" identifier ")"
	op_type_spec      <  param_type_spec / "void"
	parameter_dcls    <  "(" param_dcl ( "," param_dcl )* ")" / "(" ")"
	# Multiple param_attribute
	param_dcl         <  param_attribute+ param_type_spec simple_declarator
	# added retval & square brackets
	param_attribute   <  "[" ( "in" / "out" / "inout" / "retval" ) "]"
	raises_expr       <  "raises" "(" scoped_name ( "," scoped_name )* ")"
	context_expr      <  "context" "(" string_literal ( "," string_literal )* ")"
	# Changed scoped_name to my type
	param_type_spec   <  ( base_type_spec / string_type / wide_string_type / type / "void" "*" ) ( "*" )*
	fixed_pt_type     <  "fixed" "<" positive_int_const "," positive_int_const ">"
	fixed_pt_const_type <  "fixed"
	value_base_type   <  "ValueBase"
	constr_forward_decl <  "struct" identifier / "union" identifier
	import_           <  "import" imported_scope ";"
	imported_scope    <  scoped_name / string_literal
	# modified to allow typedef
	type_id_dcl       <  ( "typeid" / "typedef" ( "enum" / "struct" ) ) scoped_name ( string_literal / identifier )
	type_prefix_dcl   <  "typeprefix" scoped_name string_literal
	readonly_attr_spec <  "readonly" "attribute" param_type_spec readonly_attr_declarator
	readonly_attr_declarator <  simple_declarator raises_expr / simple_declarator ( "," simple_declarator )*
	attr_spec         <  "attribute" param_type_spec attr_declarator
	attr_declarator   <  simple_declarator attr_raises_expr / simple_declarator ( "," simple_declarator )*
	attr_raises_expr  <  get_excep_expr set_excep_expr? / set_excep_expr
	get_excep_expr    <  "getraises" exception_list
	set_excep_expr    <  "setraises" exception_list
	exception_list    <  "(" scoped_name ( "," scoped_name )* ")"
	component         <  component_dcl / component_forward_dcl
	component_forward_dcl <  "component" identifier
	component_dcl     <  component_header "{" component_body "}"
	component_header  <  "component" identifier component_inheritance_spec? supported_interface_spec?
	supported_interface_spec <  "supports" scoped_name ( "," scoped_name )*
	component_inheritance_spec <  ":" scoped_name
	component_body    <  component_export*
	component_export  <  provides_dcl ";"
	                   / uses_dcl ";"
	                   / emits_dcl ";"
	                   / publishes_dcl ";"
	                   / consumes_dcl ";"
	                   / attr_dcl ";"
	provides_dcl      <  "provides" interface_type identifier
	interface_type    <  scoped_name / "Object"
	uses_dcl          <  "uses" "multiple"? interface_type identifier
	emits_dcl         <  "emits" scoped_name identifier
	publishes_dcl     <  "publishes" scoped_name identifier
	consumes_dcl      <  "consumes" scoped_name identifier
	home_dcl          <  home_header home_body
	home_header       <  "home" identifier home_inheritance_spec? supported_interface_spec? "manages" scoped_name primary_key_spec?
	home_inheritance_spec <  ":" scoped_name
	primary_key_spec  <  "primarykey" scoped_name
	home_body         <  "{" home_export* "}"
	home_export       <  export_ / factory_dcl ";" / finder_dcl ";"
	factory_dcl       <  "factory" identifier "(" init_param_decls? ")" raises_expr?
	finder_dcl        <  "finder" identifier "(" init_param_decls? ")" raises_expr?
	event             <  event_dcl / event_abs_dcl / event_forward_dcl
	event_forward_dcl <  "abstract"? "eventtype" identifier
	event_abs_dcl     <  "abstract" "eventtype" identifier value_inheritance_spec? "{" export_* "}"
	event_dcl         <  event_header "{" value_element* "}"
	event_header      <  "custom"? "eventtype" identifier value_inheritance_spec?

	# Additions

	integer_literal   <~ sign? unsigned
	unsigned          <~ ( "0" [0-8]+ / ( "0x" / "0X" ) [0-8a-fA-F]+ / digit+ )
	sign              <- "-" / "+"
	character_literal <~ quote (!quote (escape_sequence / .)) quote
	wide_character_literal <- "L" character_literal
	escape_sequence   <~ backslash ( quote / doublequote / backslash / [ntvbrfa] )
	floating_pt_literal < sign? ( digit+ "." digit* / "." digit+ ) ( ( "e" / "E" ) sign? digit+ )?
	string_literal    <~ doublequote (dq_char)* doublequote string_literal?
	wide_string_literal <- "L" string_literal
	dq_char           <- escape_sequence / !doublequote .
	fixed_pt_literal  < sign? ( digit+ "." digit* / "." digit+ / digit+ ) ( "d" / "D" )
`));

ParseTree parseIDL(string code)
{
	return IDL(code);
}
