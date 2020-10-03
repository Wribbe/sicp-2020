
DIR_SRC := src
DIR_OUT := out

OUT := $(foreach p,$(notdir $(wildcard ${DIR_SRC}/*.scm)),${DIR_OUT}/$(p:.scm=.txt))

all: ${OUT}

${DIR_OUT}/%.txt : Makefile ${DIR_SRC}/%.scm | ${DIR_OUT}
	-mit-scheme --quiet < $(filter %.scm,$^) > $@ 2>&1
	@cat $@

${DIR_OUT} :
	mkdir $@
