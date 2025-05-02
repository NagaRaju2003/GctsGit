class-pool .
*"* class pool for class ZCL1

*"* local type definitions
include ZCL1==========================ccdef.

*"* class ZCL1 definition
*"* public declarations
  include ZCL1==========================cu.
*"* protected declarations
  include ZCL1==========================co.
*"* private declarations
  include ZCL1==========================ci.
endclass. "ZCL1 definition

*"* macro definitions
include ZCL1==========================ccmac.
*"* local class implementation
include ZCL1==========================ccimp.

*"* test class
include ZCL1==========================ccau.

class ZCL1 implementation.
*"* method's implementations
  include methods.
endclass. "ZCL1 implementation
