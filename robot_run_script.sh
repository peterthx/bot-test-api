#!/bin/bash
set -e

# One results folder for all rounds (timestamped once)
RUN_DIR="tests/suites/results/$(date +%Y%m%d_%H%M%S)"
mkdir -p "$RUN_DIR"

for i in {1..3}; do
  echo "Run to round #$i time(s)"
  # Each run writes its own output files inside the same RUN_DIR (with round suffixes)
  python3 -m robot \
    --output    "$RUN_DIR/output_$i.xml" \
    --report    "report_$i.html" \
    --log       "log_$i.html" \
    --outputdir "$RUN_DIR" \
    tests/suites/health_check.robot
done

echo "Done. Results in: $RUN_DIR"
