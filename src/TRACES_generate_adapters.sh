#!/bin/bash
#
echo -e "\e[34m[TRACESPipe]\e[32m Generating adapters file (adapters.fa) ...\e[0m";
#
printf ">PrefixPE/1\nTACACTCTTTCCCTACACGACGCTCTTCCGATCT\n>PrefixPE/2\nGTGACTGGAGTTCAGACGTGTGCTCTTCCGATCT\n>PE1\nTACACTCTTTCCCTACACGACGCTCTTCCGATCT\n>PE1_rc\nAGATCGGAAGAGCGTCGTGTAGGGAAAGAGTGTA\n>PE2\nGTGACTGGAGTTCAGACGTGTGCTCTTCCGATCT\n>PE2_rc\nAGATCGGAAGAGCACACGTCTGAACTCCAGTCAC\n" > adapters.fa
#
echo -e "\e[34m[TRACESPipe]\e[32m Done!\e[0m";
