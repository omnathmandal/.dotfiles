CC :=gcc
CPP :=g++
LDFLAGS :=
C_SOURCES :=$(wildcard *.c)
C_EXECUTABLE :=$(C_SOURCES:.c=)
CPP_SOURCES :=$(wildcard *.cpp)
CPP_EXECUTABLE :=$(CPP_SOURCES:.cpp=)
 
.DEFAULT_GOAL := help

 .PHONY: build
build:$(C_EXECUTABLE) $(CPP_EXECUTABLE)

$(C_EXECUTABLE):$(C_SOURCES)
	$(CC) $< $(LDFLAGS) $(CFLAGS) -o $@

$(CPP_EXECUTABLE):$(CPP_SOURCES)
	$(CPP) $< $(LDFLAGS) $(CFLAGS) -o $@

.PHONY: clean
clean:
	rm -rf $(C_EXECUTABLE)
	rm -rf $(CPP_EXECUTABLE)

help:
	@echo '----------------------------------------------------------------------'
	@echo 'usage: make [target] ...'
	@echo '----------------------------------------------------------------------'
	@echo 'Target :'
	@echo '----------------------------------------------------------------------'
	@echo 'help:     Show this help.'
	@echo 'build:    builds the source code to EXECUTABLE'
	@echo 'clean:    removes all the executables'
	@echo '----------------------------------------------------------------------'
