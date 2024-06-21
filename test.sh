# used for inference on c2fc, without AQT
nproc_per_node=4
batch_size=1

coco_path=./datasets
output_dir=biadt_flir_rgb_val
epochs=50
lr_drop=40
num_queries=300
backbone=resnet50
resume_weights=weights/c2fc_biadt.pth
dataset_file=flir_adas_v2

python \
        main.py -m dab_deformable_detr \
        --output_dir ${output_dir}      \
        --backbone ${backbone}          \
        --batch_size ${batch_size}      \
        --lr 5e-5                       \
        --lr_drop ${lr_drop}            \
        --num_queries ${num_queries}    \
        --epochs $epochs                \
        --coco_path ${coco_path}        \
        --hidden_dim 384                \
        --resume ${resume_weights}      \
        --eval                          \
        --dataset_file ${dataset_file}    \