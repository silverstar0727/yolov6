cp -r /data/VOCdevkit ./

python x2coco.py \
        --dataset_type voc \
        --voc_anno_dir VOCdevkit/VOC2007/Annotations/ \
        --voc_anno_list VOCdevkit/VOC2007/ImageSets/Main/trainval.txt \
        --voc_label_list label_list.txt \
        --voc_out_name YOLOv6/data/coco/train.json

python x2coco.py \
        --dataset_type voc \
        --voc_anno_dir VOCdevkit/VOC2007/Annotations/ \
        --voc_anno_list VOCdevkit/VOC2007/ImageSets/Main/test.txt \
        --voc_label_list label_list.txt \
        --voc_out_name YOLOv6/data/coco/test.json

mkdir YOLOv6/data/coco/images

cp -r VOCdevkit/VOC2007/JPEGImages/* YOLOv6/data/coco/images

wget https://github.com/meituan/YOLOv6/releases/download/0.1.0/yolov6n.pt