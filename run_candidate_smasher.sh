#!/usr/bin/env bash
# This is designed to be run from within a directory that contains the following files:
# annotations.r
# spek.json
# performance.csv
# templates.json
# causal_pathways.json
# outputs/spek_bs.json

COL_WIDTH=30
LOG_FILE=vignette.log

# Create outputs directory
mkdir -p outputs

# Create log file
date > ${LOG_FILE}
# Run candidate smasher on spek (spek_bs.json) and templates
printf "%-${COL_WIDTH}s" "Running CandidateSmasher..." | tee -a ${LOG_FILE}
printf "\n" >> ${LOG_FILE}
$DISPLAY_LAB_HOME/candidate-smasher/bin/cansmash --path=outputs/spek_bs.json --md-source=../knowledge-base/templates.json 2>> ${LOG_FILE} | jq . > outputs/spek_cs.json
printf "exit status: %d\n" "${?}"

printf "Log written to ${LOG_FILE}\n"
