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

Provide data type and path:
```
{
    "datatype"         : "bdf",
    "comment_datatype" : "bdf, edf or mat",
    "eeg_path"         : "PATH_TO_EEG_FILE",
    "eeg_filename"     : "sub-xxx_task-yyy_eeg",
    "output_path"      : null,
     
```
Provide event file with required information for the data segmentation:
```
    "event"      : "PATH_TO_EVENT_FILE/sub-xxx_task-yyy_event.mat",
    "eventtype"  : "STATUS",
    "eventvalue" : "10, 11, 12",
    "prestim"    : 0.5,
    "poststim"   : 1,
```
Provide general information about the dataset:
```
    "n_subjects"            : 30,
    "comment_n_subjects"    : "provide either a number (to go from 1 to n_subjects) or a range (e.g., [2:5, 8:15, 20:41])
    "n_trials"              : 200,
    "fsample"               : 2048,
    "session_duration"      : 15,
    "comment_session_dur"   : "in minutes",
    "pseudo_length"         : 1,
    "comment_pseudo_length" : "in seconds",
 ```

If predefined artifacts are used (simulated data), give the path to automatically identify useful time segments:
```
    "artifact_path"     : "../Validation/Validation-Framework-Source-Reconstruction/pseudo_data",
    "artifact_filename" : "task-test_artifact"
 }
 ```
 Finally, save the modified config.json file.

## Fit BIDS format
The provided code reads data following the BIDS format (https://bids.neuroimaging.io/index.html).
Edit your dataset to fit this format. Example:
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

# Perform the preprocessing
Open the script in Matlab editor and run it to process your data.
The resulting preprocessed EEG files will be automatically stored in the "preprocessed_data" folder except if you specified another location as the "output_path" of the config file.
