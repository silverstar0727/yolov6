mkdir kitti
cp -r ~/data/* kitti/

python data_formatting/kitti2yolo.py
python data_formatting/split_yolo_custom.py