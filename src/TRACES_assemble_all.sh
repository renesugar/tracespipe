#!/bin/bash
#
# IT ASSUMES THAT THE FOLLOWING INPUT FILES EXIST:
# o_fw_pr.fq o_rv_pr.fq o_fw_unpr.fq o_rv_unpr.fq
#
# ASSEMBLE
spades.py -t 12 -m 20 --careful -o out_spades_full_$1 -1 o_fw_pr.fq -2 o_rv_pr.fq -s o_fw_unpr.fq -s o_rv_unpr.fq
#