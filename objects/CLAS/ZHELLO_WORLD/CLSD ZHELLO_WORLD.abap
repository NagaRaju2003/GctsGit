class-pool .
*"* class pool for class ZHELLO_WORLD

*"* local type definitions
include ZHELLO_WORLD==================ccdef.

*"* class ZHELLO_WORLD definition
*"* public declarations
  include ZHELLO_WORLD==================cu.
*"* protected declarations
  include ZHELLO_WORLD==================co.
*"* private declarations
  include ZHELLO_WORLD==================ci.
endclass. "ZHELLO_WORLD definition

*"* macro definitions
include ZHELLO_WORLD==================ccmac.
*"* local class implementation
include ZHELLO_WORLD==================ccimp.

*"* test class
include ZHELLO_WORLD==================ccau.

class ZHELLO_WORLD implementation.
*"* method's implementations
  include methods.
endclass. "ZHELLO_WORLD implementation
