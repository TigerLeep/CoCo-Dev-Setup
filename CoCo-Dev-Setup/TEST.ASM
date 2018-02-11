INTCNV  EQU     $B3ED   * 46061
GIVABF  EQU     $B4F4   * 46324
        ORG     $3F00
START   JSR     INTCNV
        ADDD    #2
        JMP     GIVABF
        END     START
