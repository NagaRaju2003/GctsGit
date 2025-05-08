class-pool .
*"* class pool for class ZFC1

*"* local type definitions
include ZFC1==========================ccdef.

*"* class ZFC1 definition
*"* public declarations
  include ZFC1==========================cu.
*"* protected declarations
  include ZFC1==========================co.
*"* private declarations
  include ZFC1==========================ci.
endclass. "ZFC1 definition

*"* macro definitions
include ZFC1==========================ccmac.
*"* local class implementation
include ZFC1==========================ccimp.

*"* test class
include ZFC1==========================ccau.

class ZFC1 implementation.
*"* method's implementations
  include methods.
endclass. "ZFC1 implementation
