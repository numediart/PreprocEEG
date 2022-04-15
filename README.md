# PreprocEEG
 
This code is related to the work presented in the EMBC 2022:
La Fisca and Gosselin, "A Hybrid Framework for ERP Preprocessing in EEG Experiments".

To cite this work, please contact: luca.lafisa@umons.ac.be

## Description
This repository aims to preprocess ERP data from an EEG experiment (bdf, edf or mat file) using a hybrid framework that follows recommendations of OHBM COBIDAS MEEG committee.
Bad channels, ocular artifacts, muscle artifacts and line noise are optimally reduced in the process.

## Requirements
- Matlab R2018+
- FieldTrip toolbox (https://www.fieldtriptoolbox.org/download/)
- ReMAE license (http://staff.ustc.edu.cn/~xunchen/resource.htm)

## Download the repository
Clone this repository to a suitable local folder using the command shell:
```
cd YourLocalFolder
git clone https://github.com/numediart/PreprocEEG
cd PreprocEEG
```

## Configure the framework
Edit the config.json file to adapt the framework to your data by following the provided template.

## Fit BIDS format
The provided code reads data following the BIDS format (https://bids.neuroimaging.io/index.html).
Edit your dataset to fit this format (e.g. sub-005_task-example_eeg.bdf).
Example:
```
/
├── dataset_description.json
├── participants.tsv
├── README
├── CHANGES
├── sub-01
│   └── eeg
│       ├── sub-01_task-xxx_eeg.bdf
│       ├── sub-01_task-xxx_eeg.json
│       └── sub-01_task-xxx_events.tsv
├── sub-02
├── ...
├── derivatives
│   └── preproc_and_segment
│       ├── dataset_description.json
│       ├── sub-01
│       │   └── eeg
│       │       ├── sub-01_preprocessed.mat
│       │       ├── sub-01_timelock.mat
│       │       └── sub-01_timelock.json
│       ├── sub-02
│       └── ...
```
