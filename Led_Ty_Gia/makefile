DIR_PRJ := .
NAME_PRJ := N76_LedTyGia

DIR_INC := $(DIR_PRJ)/inc
DIR_SRC := $(DIR_PRJ)/src
DIR_OUT := $(DIR_PRJ)/output
DIR_BIN := $(DIR_PRJ)/output/bin

CC		:= sdcc

CC_OPT				:= -c -I$(DIR_INC)
CC_OPT2				:= -I$(DIR_INC)


TREE_SRC := $(wildcard $(DIR_SRC)/*.c)
TREE_REL := $(patsubst $(DIR_SRC)%.c, $(DIR_OUT)%.rel, $(TREE_SRC))

$(DIR_OUT)/%.rel: $(DIR_SRC)/%.c
#	@echo "123 - compile $(DIR_SRC)/main.c file  $(@F)"
	$(CC) $(CC_OPT) $(DIR_SRC)/$(patsubst %.rel,%.c, $(@F)) -o $@

build: $(TREE_REL)
	@mkdir -p $(DIR_BIN)
#	@echo "   "
#	@echo "******* MAKEFILE - Linking all file together *********"
	$(CC) $(CC_OPT2) -o "$(DIR_OUT)/$(NAME_PRJ).hex" "$(DIR_PRJ)/$(NAME_PRJ).c" $(TREE_REL)
#	@echo "   "
#	@echo "******* MAKEFILE - Copy HEX file to bin folder *********"
	cp -f "$(DIR_OUT)/$(NAME_PRJ).hex" "$(DIR_BIN)"
#	@echo "   "
#	@echo "******* MAKEFILE - Convert HEX to BIN *********"
	objcopy -I ihex "$(DIR_BIN)/$(NAME_PRJ).hex" -O binary "$(DIR_BIN)/$(NAME_PRJ).bin"
	@echo "   "
	@echo "******* MAKEFILE - DONE - DONE - DONE *********"
	@echo "   "

clean:
	rm -f $(DIR_OUT)/*.*
	rm -f $(DIR_BIN)/*.*

all: clean build