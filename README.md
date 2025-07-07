# Makefile

This is a project that provides you a building system. You can build your project easily by using my makefiles.

Structure
=======

Your project may consist of many directories, such as "dev", "gpio", "kernel".

You can put your header files into "include", and the make will add your header files into include list.

For each file, you can choose to build it into your main program, to build it as a module, or not to build it.

Configure
=======

**For main Makefile:**

`TARGET`  for application name.

`SRCS`  for source files (*.o) and directories.

**For Makefile.build:**

You can modify  `mod`  , `build-in.o`  ,  `%.o`  to adapt to your project.

**For Makefiles in subdirectories:**

`obj-y`  for source files (*.o) and directories you want to build.

`obj-n`  for source files (*.o) and directories you don't want to build.

`obj-m`  for directories you want to build them as a module.

**For Makefiles in subdirectories that you want to build as a module:**

`obj-m`  for the module's name + .o ( e.g. pci.o) .

`name-y`  for the module's source files (*.o) ( e.g. pci-y) .

Each subdirectory that you want to build as a module should only consist of one module.

Usage
=======

You can simply use:

`make`

THIS IS NOT A JOKE.

License
=======

MIT