class-pool .
*"* class pool for class ZT1H

*"* local type definitions
include ZT1H==========================ccdef.

*"* class ZT1H definition
*"* public declarations
  include ZT1H==========================cu.
*"* protected declarations
  include ZT1H==========================co.
*"* private declarations
  include ZT1H==========================ci.
endclass. "ZT1H definition

*"* macro definitions
include ZT1H==========================ccmac.
*"* local class implementation
include ZT1H==========================ccimp.

*"* test class
include ZT1H==========================ccau.

class ZT1H implementation.
*"* method's implementations
  include methods.
endclass. "ZT1H implementation
