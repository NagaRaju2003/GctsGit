class-pool .
*"* class pool for class Z_FILE1

*"* local type definitions
include Z_FILE1=======================ccdef.

*"* class Z_FILE1 definition
*"* public declarations
  include Z_FILE1=======================cu.
*"* protected declarations
  include Z_FILE1=======================co.
*"* private declarations
  include Z_FILE1=======================ci.
endclass. "Z_FILE1 definition

*"* macro definitions
include Z_FILE1=======================ccmac.
*"* local class implementation
include Z_FILE1=======================ccimp.

*"* test class
include Z_FILE1=======================ccau.

class Z_FILE1 implementation.
*"* method's implementations
  include methods.
endclass. "Z_FILE1 implementation
