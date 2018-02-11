# CoCo Dev Setup
This is a basic setup to allow TRS-80 Color Computer development on a PC using Visual Studio and a real CoCo connected to the PC with DriveWire.

## Initial Setup
- Clone this repository
- Open the `CoCo-Dev-Setup.sln` file in Visual Studio 2017 and build the project once to create the TEST.DSK disk image file.
- Mount the generated TEST.DSK in DriveWire.
- On the CoCo, mount the DriveWire disk image and make it the current drive.  If you have the CoCoSDC, use `DRIVE 2, #0` (replace `0` with the DriveWire drive # you mounted TEST.DSK on),
- On the CoCo do a `DIR` to ensure you see the files `TEST.BIN` and `TEST.BAS` listed.
- On the CoCo do a `RUN "TEST"` and confirm you see `USR(5)= 7` output.

## Ongoing Development
- In Visual Studio, make any changes to `TEST.ASM` and/or `TEST.BAS`.
- Rebuild the solution to assemble a new `TEST.BIN` and copy `TEST.BIN` and `TEST.BAS` to the `TEST.DSK` disk image.
- On the CoCo do a `RUN "TEST"` to confirm your changes are immediately available on the CoCo.

## Notes
- If you write any additional files to the disk on the CoCo they should stay there.  The `Makefile` on the PC should only recreate the TEST.DSK image if it doesn't already exist.
- If you add additional source files to the project, or rename existing files, you more than likely will need to update the Makefile.  Doing so is beyond the scope of this README.
- This could probably be made to work in Visual Studio Code, but I have not looked into it.  It works on the free Visual Studio 2017 Community Edition, which is what I use.
