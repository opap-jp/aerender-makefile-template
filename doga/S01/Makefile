# 共通マクロ
include ../Makefile.inc

# サブディレクトリ 
SUBDIRS:=C01 C02 C03

.PHONY: all $(SUBDIRS)
all: $(SUBDIRS)
$(SUBDIRS):
	$(MAKE) -C $@

