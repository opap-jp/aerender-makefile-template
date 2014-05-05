# 実行ファイル
AERENDER:=/c/Program\ Files/Adobe/Adobe\ After\ Effects\ CC/Support\ Files/aerender.exe
RENDER_OPTS:= -sound ON -OMtemplate LagarithRGBA -mp

# ディレクトリ取得
CURRENT_DIR=$(shell readlink -f ./)
PARENT_DIR=$(shell readlink -f ../)

# コンポ設定
SCENE_NUM=$(shell basename $(PARENT_DIR))
CUT_NUM=$(shell basename $(CURRENT_DIR))
PROJ_FILE=$(CURRENT_DIR)/$(SCENE_NUM)_$(CUT_NUM).aep
COMP_NAME=_output
OUT_FILE=$(CURRENT_DIR)/../../_output/$(SCENE_NUM)_$(CUT_NUM).avi
