#!/bin/bash
# 
# ./TRACES_blastn_n_db.sh query.fa
#
# ==============================================================================
#
SPATH="../system_files/blast_dbs/nt";
QUERY="$1";
DBASE="nt";
#STYLE="6 qacc sacc pident mismatch btop";
STYLE="6 qseqid sseqid pident length mismatch gapopen qstart qend sstart send evalue bitscore btop";
#
# RUN ==========================================================================
#
blastn -db $SPATH/$DBASE -query $QUERY -outfmt "$STYLE";
#
# ==============================================================================
