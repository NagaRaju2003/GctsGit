class-pool .
*"* class pool for class ZCLASS1_F

*"* local type definitions
include ZCLASS1_F=====================ccdef.

*"* class ZCLASS1_F definition
*"* public declarations
  include ZCLASS1_F=====================cu.
*"* protected declarations
  include ZCLASS1_F=====================co.
*"* private declarations
  include ZCLASS1_F=====================ci.
endclass. "ZCLASS1_F definition

*"* macro definitions
include ZCLASS1_F=====================ccmac.
*"* local class implementation
include ZCLASS1_F=====================ccimp.

*"* test class
include ZCLASS1_F=====================ccau.

class ZCLASS1_F implementation.
*"* method's implementations
  include methods.
endclass. "ZCLASS1_F implementation
