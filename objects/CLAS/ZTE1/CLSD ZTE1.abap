class-pool .
*"* class pool for class ZTE1

*"* local type definitions
include ZTE1==========================ccdef.

*"* class ZTE1 definition
*"* public declarations
  include ZTE1==========================cu.
*"* protected declarations
  include ZTE1==========================co.
*"* private declarations
  include ZTE1==========================ci.
endclass. "ZTE1 definition

*"* macro definitions
include ZTE1==========================ccmac.
*"* local class implementation
include ZTE1==========================ccimp.

*"* test class
include ZTE1==========================ccau.

class ZTE1 implementation.
*"* method's implementations
  include methods.
endclass. "ZTE1 implementation
