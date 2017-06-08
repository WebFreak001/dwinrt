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
	                   / type_id_dcl ";"
	# Added apicontract
	                   / apicontract ( ";" / "{" "}" ";"? )
	# Added cpp_quote
	                   / cpp_quote
	# Added attributes
	                   / attr_spec
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
	                   / attributename
	                   / attributeusage
	                   / attribute_call
	                   / scoped_name
	contract          <  "contract" "(" scoped_name "," digit ( "." digit )? ")"
	contractversion   <  "contractversion" "(" digit ( "." digit )? ")"
	version_          <  "version" "(" ( digit ( "." digit )? / const_exp ) ")"
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
	attributename     <  "attributename" "(" string_literal ")"
	attributeusage     <  "attributename" "(" identifier ( "," identifier )* ")"
	attribute_call    <  scoped_name ( "(" const_exp ( "," const_exp )* ")" )?
	# Added cpp_quote
	cpp_quote         <  "cpp_quote" "(" string_literal ")"
	# Added apicontract
	apicontract       <  "apicontract" identifier
	type              <  ( "const" scoped_name / "unsigned" scoped_name? / scoped_name ) ( "<" type ( "," type )* ">" )? ( "*" / "const" )*
	# Added declare
	declare           <  "declare" "{" declare_definition+ "}"
	declare_definition < declare_interface ";"
	declare_interface < "interface" type
	# Added namespace, removed module
	module_           <  "namespace" scoped_name "{" definition+ "}"
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
	# Added cpp_quote
	                   / cpp_quote
	# Added interface + attributes
	                   / definition_attribute* declare_interface ";"
	interface_inheritance_spec < ":" type ( "," type )*
	interface_require_spec < "requires" type ( "," type )*
	interface_name    <  scoped_name
	scoped_name       <  "."? identifier ( "." identifier )*
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
	                   / constr_forward_decl
	type_declarator   <  type_spec declarators
	type_spec         <  type / constr_type_spec
	constr_type_spec  <  struct_type / union_type / enum_type
	declarators       <  declarator ( "," declarator )*
	declarator        <  simple_declarator / complex_declarator
	simple_declarator <  identifier ( "[" digit* "]" )?
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
	boolean_type      <  "boolean"
	struct_type       <  "struct" identifier "{" member_list "}"
	member_list       <  member+
	member            <  definition_attribute* type_spec declarators ";"
	union_type        <  "union" identifier "switch" "(" switch_type_spec ")" "{" switch_body "}"
	switch_type_spec  <  integer_type / char_type / boolean_type / enum_type / scoped_name
	switch_body       <  case_+
	case_             <  case_label+ element_spec ";"
	case_label        <  "case" const_exp ":" / "default" ":"
	element_spec      <  type_spec declarator
	enum_type         <  "enum" identifier "{" enum_body "}"
	# Added leading comma
	enum_body         <  enumerator ( "," enumerator )* ","?
	# Added attribute & enum values
	enumerator        <  definition_attribute* identifier ( "=" const_exp )?
	array_declarator  <  identifier fixed_array_size+
	fixed_array_size  <  "[" positive_int_const "]"
	attr_dcl          <  attr_spec
	except_dcl        <  "exception" identifier "{" member* "}"
	op_dcl            <  op_attribute* type identifier parameter_dcls
	# Added propget, propput, eventadd, eventremove, default_overload, overload & square brackets
	op_attribute      <  "[" op_attribute_spec ( "," op_attribute_spec )* "]"
	op_attribute_spec <  "oneway"
	                   / "propget"
	                   / "propput"
	                   / "eventadd"
	                   / "eventremove"
	                   / "default_overload"
	                   / op_overload_attribute
	                   / deprecation
	                   / op_range_attribute
	                   / op_size_is_attribute
	                   / op_length_is_attribute
	                   / op_iid_is_attribute
	                   / op_annotation_attribute
	                   / attribute_call
	op_overload_attribute < "overload" "(" string_literal ")"
	op_range_attribute < "range" "(" const_exp "," const_exp ")"
	op_size_is_attribute < "size_is" "(" ","? "*"* identifier ")"
	op_length_is_attribute < "length_is" "(" ","? "*"* identifier ")"
	op_iid_is_attribute < "iid_is" "(" identifier ")"
	op_annotation_attribute < "annotation" "(" string_literal ")"
	parameter_dcls    <  "(" param_dcl ( "," param_dcl )* ")" / "(" ")"
	# Multiple param_attribute
	param_dcl         <  param_attribute+ type simple_declarator
	# added retval & square brackets
	param_attribute   <  "[" param_attr_spec ( "," param_attr_spec )* "]"
	param_attr_spec   < "in"
	                   / "out"
	                   / "inout"
	                   / "retval"
	                   / "string"
	                   / "unique"
	                   / op_range_attribute
	                   / op_size_is_attribute
	                   / op_length_is_attribute
	                   / op_iid_is_attribute
	                   / op_annotation_attribute
	# Changed scoped_name to my type
	constr_forward_decl <  "struct" identifier / "union" identifier
	import_           <  "import" imported_scope ";"
	imported_scope    <  scoped_name / string_literal
	# modified to allow typedef, removed typeid
	type_id_dcl       <  "typedef" ( enum_typedef / struct_typedef ) ( string_literal / identifier )
	enum_typedef      <  "enum" ( scoped_name ("{" enum_body "}")? / "{" enum_body "}" )
	struct_typedef    <  "struct" ( scoped_name ("{" member_list "}")? / "{" member_list "}" )
	attr_spec         <  "attribute" type ( attr_declarator / "{" member* "}" )
	attr_declarator   <  simple_declarator ( "," simple_declarator )*

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
