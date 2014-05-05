# 共通マクロ
include Makefile.inc

# サブディレクトリ 
SUBDIRS:=S01 S02

.PHONY: all $(SUBDIRS)
all: $(SUBDIRS)
$(SUBDIRS):
	$(MAKE) -C $@
