var := "testing"

include abc.mak

hello: hello1
	@echo "hello makefile"
hello1: 
	@echo "hello makefile1"
test_var:
	@echo "test var: $(var)"