class-pool .
*"* class pool for class ZV1

*"* local type definitions
include ZV1===========================ccdef.

*"* class ZV1 definition
*"* public declarations
  include ZV1===========================cu.
*"* protected declarations
  include ZV1===========================co.
*"* private declarations
  include ZV1===========================ci.
endclass. "ZV1 definition

*"* macro definitions
include ZV1===========================ccmac.
*"* local class implementation
include ZV1===========================ccimp.

*"* test class
include ZV1===========================ccau.

class ZV1 implementation.
*"* method's implementations
  include methods.
endclass. "ZV1 implementation
