**CS269**: A Preliminary Study of BiADT’s Domain Adaptation Abilities on Multispectral Images
========
[report link](https://drive.google.com/file/d/1hqbXcS7g6eHs79Y0OKZFlEAIEOaL_OlK/view?usp=sharing)

## Table of Contents
- [Model Weights](#model_weights)
- [Datasets](#datasets)
- [Installation](#instllation)


## Model_Weights
Download them and put them into `weights/`: [c2fc_biadt.pth](https://drive.google.com/file/d/1XsItqdHkoO0zAcdXkZWQwEcnXp-avop-/view?usp=drive_link) (AP=49.6) and [c2fc_aqt_biadt.pth](https://drive.google.com/file/d/1Fl4Kzkto6CN8xPyEdDzNmKyHj7LkHqJg/view?usp=drive_link)(AP=50.1).

```
For the inference, see test.sh and test_aqt.sh. For training, see train.sh.
- models
- util
- weights
  - c2fc_aqt_biadt.pth
  - c2fc_biadt.pth
- datasets
- coco.sh
- engine.py
- main.py
- requirements.txt
- run_repo.ipynb
- test.sh
- test_aqt.sh
- train.sh
```

## Datasets
### FLIR
- [Download](https://www.flir.com/oem/adas/adas-dataset-form/) to `datasets/`, create `annotations/`, copy-paste every coco.json in other train/val/test folders and rename them

```
- models
- util
- weights
- datasets
  - FLIR_ADAS_v2
    - annotations
      - *.json      # copy-paste every coco.json in images/video folders here and rename them
    - images_rgb_train  # keep its original structure
    - images_rgb_val
    - images_thermal_train
    - images_thermal_val
    - video_rgb_test
    - video_thermal_test
  - *.py
- coco.sh
- engine.py
- main.py
- requirements.txt
- run_repo.ipynb
- test.sh
- test_aqt.sh
- train.sh
```
### LLVIP
- [Download](https://github.com/bupt-ai-cz/LLVIP/blob/main/download_dataset.md) to `datasets/`, create `annotations/`, copy-paste every coco.json in other train/val/test folders and rename them

## Installation

```bash
pip install -r requirements.txt
```
