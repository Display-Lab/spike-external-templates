# Display-Lab Spike: Externalized Templates
<hr>

## Description
This repo is meant to demonstrate the following:
- We can externalize pieces of the data (templates in this case) and use them in the Display-Lab pipeline
- We can describe templates in an encapsulated, and versioned external package (a knowledge object)
- We can run the display lab pipeline on data that was assembled from external sources

## Setup
- Follow the instructions for setting up Display-Lab as detailed in the [Vert-Ramp-Affirmation](https://github.com/Display-Lab/vert-ramp-affirmation/blob/main/installation.md) repo
- Run the existing pipeline script with flags for `-d` and/or `-k` locations (other flags set as needed). Running the pipeline from the data directory only requires setting the `-k` flag to reproduce existing behavior.
```bash
run_pipeline.sh -d sample-data  -k knowledge-base -o outputs -l .pfp.log
```

### Help (TBD)
