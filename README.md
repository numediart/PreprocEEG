# PreprocEEG
 
This code is related to the work presented in the EMBC 2022:

[La Fisca and Gosselin, "A Hybrid Framework for ERP Preprocessing in EEG Experiments", 44th Annual International Conference of the IEEE Engineering in Medicine and Biology Society (EMBC), July 2022.](https://hdl.handle.net/20.500.12907/43258)


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
    "eeg_path"         : "PATH_TO_EEG_BIDS_FOLDER",
    "eeg_filename"     : "sub-xxx_task-yyy_eeg",
    "output_path"      : null,
     
```
Provide event file with required information for the data segmentation:
```
    "event"         : "PATH_TO_EVENT_FILE/sub-xxx_task-yyy_event.mat",
    "comment_event" : "replace 'null' by the path of your event file if needed",

    "trial_function"        : "ft_trialfun_general",
    "comment_trial_function": "replace with the desired trial function (cf. [FieldTrip doc](https://www.fieldtriptoolbox.org/example/making_your_own_trialfun_for_conditional_trial_definition/#:~:text=The%20ft_definetrial%20function%20allows%20you,is%20done%20using%20the%20cfg.))",
    <a href="https://www.google.com/" target="_blank">Google</a>
    "eventtype"             : "STATUS",
    "eventvalue"            : [10, 11, 12],
    "prestim"               : 0.5,
    "poststim"              : 1,
```
Provide general information about the process:
```
    "save_choice"           : false,
    "check_steps"           : true,
    "timelock_analysis"     : true,
    "check_timelock"        : true,
```

Define parameter values:
```
    "fs"                    : 2048,
    "fs_down"               : 512,
    "line_frequency"        : 50,
    "target_conditions"     : [1,8],

    "lowpass_freq"          : 200,

    "zapline_ncomponent"    : 3,

    "eemd_ensemble_number"  : 100,
    "eemd_noise_level"      : 0.2,
    "eemd_mode_number"      : -1,
    "eemd_treshold"         : 0.9,
    
    "cca_threshold"         : 0.5,
    "cca_time_lag"          : 1
 ```

 Finally, save the modified config.json file.

## Fit BIDS format
The provided code reads data following the [BIDS format](https://bids.neuroimaging.io/index.html).
Edit your dataset to fit this format. Example:
```
/
├── dataset_description.json
├── participants.tsv
├── README
├── CHANGES
├── sub-001
│   └── eeg
│       ├── sub-001_task-xxx_eeg.bdf
│       ├── sub-001_task-xxx_eeg.json
│       └── sub-001_task-xxx_events.tsv
├── sub-002
├── ...
├── derivatives
│   └── preproc_and_segment
│       ├── dataset_description.json
│       ├── sub-001
│       │   └── eeg
│       │       ├── sub-001_preprocessed.mat
│       │       ├── sub-001_timelock.mat
│       │       └── sub-001_timelock.json
│       ├── sub-002
│       └── ...
```

# Perform the preprocessing
Open the script in Matlab editor and run it to process your data.
The resulting preprocessed EEG files will be automatically stored in the "eeg_path" folder with the name "sub-xxx_task-xxx_eeg.mat" except if you specified another location as the "output_path" of the config file.
