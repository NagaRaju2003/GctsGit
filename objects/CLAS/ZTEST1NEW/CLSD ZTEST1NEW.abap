class-pool .
*"* class pool for class ZTEST1NEW

*"* local type definitions
include ZTEST1NEW=====================ccdef.

*"* class ZTEST1NEW definition
*"* public declarations
  include ZTEST1NEW=====================cu.
*"* protected declarations
  include ZTEST1NEW=====================co.
*"* private declarations
  include ZTEST1NEW=====================ci.
endclass. "ZTEST1NEW definition

*"* macro definitions
include ZTEST1NEW=====================ccmac.
*"* local class implementation
include ZTEST1NEW=====================ccimp.

*"* test class
include ZTEST1NEW=====================ccau.

class ZTEST1NEW implementation.
*"* method's implementations
  include methods.
endclass. "ZTEST1NEW implementation
