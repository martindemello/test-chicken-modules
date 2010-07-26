(require-extension foreigners)

#>
#include "cprog.h"
<#

(define c:goodbye (foreign-lambda void "goodbye"))

(define-foreign-enum-type (ccount int)
                          (ccount->int int->ccount)
                          (c:zero ZERO)
                          (c:one ONE)
                          (c:two TWO)
                          (c:three THREE))
