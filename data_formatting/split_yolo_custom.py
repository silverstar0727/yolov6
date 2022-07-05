import os
import shutil
import random

yolo_img_dir = "kitti/img"
yolo_label_dir = "yolo/label"

target_dataset_dir = "YOLOv6/dataset"

os.makedirs(f"{target_dataset_dir}/images/train", exist_ok=True)
os.makedirs(f"{target_dataset_dir}/images/val", exist_ok=True)
os.makedirs(f"{target_dataset_dir}/labels/train", exist_ok=True)
os.makedirs(f"{target_dataset_dir}/labels/val", exist_ok=True)

data_list = os.listdir(yolo_label_dir)
for data in data_list:
    data_name = data.split(".")[0]

    if random.uniform(0, 1) > 0.2:
        shutil.copyfile(f"{yolo_img_dir}/{data_name}.jpg", f"{target_dataset_dir}/images/train/{data_name}.jpg")
        shutil.copyfile(f"{yolo_label_dir}/{data_name}.txt", f"{target_dataset_dir}/labels/train/{data_name}.txt")

    else:
        shutil.copyfile(f"{yolo_img_dir}/{data_name}.jpg", f"{target_dataset_dir}/images/val/{data_name}.jpg")
        shutil.copyfile(f"{yolo_label_dir}/{data_name}.txt", f"{target_dataset_dir}/labels/val/{data_name}.txt")