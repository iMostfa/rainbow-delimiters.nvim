;; Custom query for Swift to match braces, brackets, and parentheses

(class_body
  "{" @delimiter
  (_)*
  "}" @delimiter @sentinel) @container

(function_declaration
  "{" @delimiter
  (_)*
  "}" @delimiter @sentinel) @container

(function_body
  "{" @delimiter
  (_)*
  "}" @delimiter @sentinel) @container

;; Handle deeply nested functions
(function_declaration
  (function_body
    "{" @delimiter
    (_)*
    "}" @delimiter @sentinel)) @container

(lambda_literal
  "{" @delimiter
  (_)*
  "}" @delimiter @sentinel) @container

(computed_property
  "{" @delimiter
  (_)*
  "}" @delimiter @sentinel) @container

(call_expression
  (lambda_literal
    "{" @delimiter
    (_)*
    "}" @delimiter @sentinel)) @container

(call_suffix
  (lambda_literal
    "{" @delimiter
    (_)*
    "}" @delimiter @sentinel)) @container

(statements
  "{" @delimiter
  (_)*
  "}" @delimiter @sentinel) @container

(array_type
  "[" @delimiter
  (_)*
  "]" @delimiter @sentinel) @container

(dictionary_type
  "[" @delimiter
  (_)*
  ":" @delimiter
  (_)*
  "]" @delimiter @sentinel) @container

(tuple_type
  "(" @delimiter
  (_)*
  ")" @delimiter @sentinel) @container
  
  

  ;; Support for enum bodies
(enum_class_body
  "{" @delimiter
  (_)*
  "}" @delimiter @sentinel) @container

;; Handle nested enums within classes or other enums
(class_declaration
  (enum_class_body
    "{" @delimiter
    (_)*
    "}" @delimiter @sentinel)) @container

;; Handle nested enum entries with their respective bodies
(enum_entry
  "{" @delimiter
  (_)*
  "}" @delimiter @sentinel) @container
  
  
  
  
;; Handle nested enum entries with their respective bodies
(enum_entry
  "{" @delimiter
  (_)*
  "}" @delimiter @sentinel) @container

;; Support for didSet and willSet blocks
(willset_didset_block
  "{" @delimiter
  (_)*
  "}" @delimiter @sentinel) @container

(didset_clause
  "{" @delimiter
  (_)*
  "}" @delimiter @sentinel) @container