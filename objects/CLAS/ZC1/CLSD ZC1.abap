class-pool .
*"* class pool for class ZC1

*"* local type definitions
include ZC1===========================ccdef.

*"* class ZC1 definition
*"* public declarations
  include ZC1===========================cu.
*"* protected declarations
  include ZC1===========================co.
*"* private declarations
  include ZC1===========================ci.
endclass. "ZC1 definition

*"* macro definitions
include ZC1===========================ccmac.
*"* local class implementation
include ZC1===========================ccimp.

*"* test class
include ZC1===========================ccau.

class ZC1 implementation.
*"* method's implementations
  include methods.
endclass. "ZC1 implementation
