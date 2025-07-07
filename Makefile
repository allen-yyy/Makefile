############################################################################
#
# The Main Makefile for compile
#
############################################################################

#Target application name
TARGET	:=app

#Source file Directory
SRCS 	:= dev/ gpio/ kernel/

#Root path for all Makefile
export ROOTPATH=$(shell cd)

.PHONY: all pre clean auto

#Virtual Final target
all:  pre $(TARGET)
	
auto: all clean

#Recursive compile start
pre: $(SRCS)
	

$(SRCS): 
	make -C $@ -f Makefile -f $(ROOTPATH)/Makefile.build objs=$@

#Generate final app
$(TARGET): $(patsubst %/, %/build-in.o, $(SRCS))
	gcc -o $@ $^

#Clean all the compiling generations
clean:
	del /S *.o