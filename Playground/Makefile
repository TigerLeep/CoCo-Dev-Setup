ASSEMBLER=..\Utils\lwasm.exe
IMAGETOOL=..\Utils\imgtool.exe
DISK_FORMAT=coco_jvc_rsdos
DISK_IMAGE=TEST.DSK
DELETE=$(IMAGETOOL) del $(DISK_FORMAT) $(DISK_IMAGE)
PUT=$(IMAGETOOL) put $(DISK_FORMAT) $(DISK_IMAGE)
PUT_TEST_BIN=$(PUT) TEST.BIN TEST.BIN --ftype=binary
PUT_TEST_BAS=$(PUT) TEST.BAS TEST.BAS --ftype=basic --ascii=ascii
CREATE_DISK=$(IMAGETOOL) create $(DISK_FORMAT) $@ -tracks=35
ASSEMBLER_ARGS=--6809 --format=decb --pragma=6809,c,cd,m80ext,qrts,forwardrefmax,6800compat --symbols-nolocals --list=$*.lst --map=$*.map --output=$@

TEST.DSK: TEST.BIN TEST.BAS
    -$(DELETE) TEST.BIN
    $(PUT_TEST_BIN)
    -$(DELETE) TEST.BAS
    $(PUT_TEST_BAS)

TEST.BIN: TEST.ASM
    $(ASSEMBLER) $(ASSEMBLER_ARGS) TEST.ASM

all: \
    TEST.DSK

clean: 
    del *.BIN *.lst *.map
    -rmdir /s /q Debug obj

