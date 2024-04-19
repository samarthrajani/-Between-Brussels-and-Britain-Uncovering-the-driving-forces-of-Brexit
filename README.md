# Starter folder

## Overview

This repo provides the data, scripts, and all other information for the paper "Between Brussels and Britain: Uncovering the driving forces of Brexit".
Some notes : 

- The raw data file was too large to push to github, so was saved locally instead. The donwload data script contains a fully reproducible method of donwloading the data, it was only saved locally
- Due to extensive load times, the data was downloaded and cleaned simulatneously in the same script titled '01-download_data.R'
- Even after cleaning, the dataset was too large to push to github, and making it smaller would negatively affect the model. Therefore, it had to be read from a local source.
- I made an attempt to save the dataset as a parquet file, but the new error due to the update made it impossible


## File Structure

The repo is structured as:

-   `model` contains fitted models. 
-   `other` contains relevant literature, details about LLM chat interactions, and sketches.
-   `paper` contains the files used to generate the paper, including the Quarto document and reference bibliography file, as well as the PDF of the paper. 
-   `scripts` contains the R scripts used to simulate, download and clean data.


## Statement on LLM usage

Aspects of the code were written with the help of the ChatGPT and the entire chat history is available in inputs/llms/usage.txt.
