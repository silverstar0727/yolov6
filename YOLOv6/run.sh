nohup python tools/train.py --batch 128 --conf configs/yolov6n.py --data data/dataset.yaml --device 0 --epochs 100 &

# python -m torch.distributed.launch --nproc_per_node 8 tools/train.py --batch 256 --conf configs/yolov6s.py --data data/coco.yaml --device 0,1,2,3,4,5,6,7
