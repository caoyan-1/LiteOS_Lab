#
# Copyright (c) <2020>, <Huawei Technologies Co., Ltd>. All rights reserved
#

FOR32 := true

ifeq ($(FOR32), true)
CFLAGS += -m32  -march=i386 -mtune=i386
endif

CFLAGS += -Wall -g
CFLAGS += -Wno-missing-braces -Wno-deprecated-declarations

GCOV_FLAGS = -fprofile-arcs -ftest-coverage -lgcov
CFLAGS += $(GCOV_FLAGS)

VALGRIND_FLAGS = --tool=memcheck --leak-check=full --show-reachable=yes --trace-children=yes --smc-check=all \
                 --track-origins=yes
