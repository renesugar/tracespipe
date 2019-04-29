#!/bin/bash
#
# 1 -> TURNS THE RESPECTIVE COMPUTATION ON
# 0 -> IGNORES THE RESPECTIVE ACTION
#
GET_UTILS=0;
INSTALL_PIPELINE=1;
#
# ==============================================================================
# ################################# FUNCTIONS ##################################
# ==============================================================================
#
Program_installed () {
  printf "Checking $1 ... ";
  if ! [ -x "$(command -v $1)" ];
    then
    echo -e "\e[41mERROR\e[49m: $1 is not installed." >&2;
    exit 1;
    else
    echo -e "\e[42mSUCCESS!\e[49m";
    fi
  }
#
# ==============================================================================
# ================================= GET UTILS ==================================
if [[ "$GET_UTILS" -eq "1" ]];
  then
  sudo apt-get install librsvg2-bin cmake git python3-pip
  pip3 install conda
  fi
#
# ==============================================================================
# ============================== GET TRIMMOMATIC ===============================
if [[ "$INSTALL_PIPELINE" -eq "1" ]];
  then
  conda install -c bioconda trimmomatic --yes
  conda install -c seyedmorteza cryfa --yes
  conda install -c cobilab magnet --yes
  conda install -c cobilab falcon --yes
  conda install -c cobilab gto --yes
  conda install -c bioconda spades --yes
  #
  Program_installed "trimmomatic";
  Program_installed "cryfa";
  Program_installed "MAGNET";
  Program_installed "FALCON";
  Program_installed "gto";
  Program_installed "spades.py";
  fi
#
# ==============================================================================

