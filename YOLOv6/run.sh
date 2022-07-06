mkdir ./weights
wget https://github.com/meituan/YOLOv6/releases/download/0.1.0/yolov6n.pt -O weights/yolov6n.pt

nohup python tools/train.py --batch 128 --conf configs/yolov6n_finetune.py --data data/dataset.yaml --device 0 --epochs 100 &

# python -m torch.distributed.launch --nproc_per_node 8 tools/train.py --batch 256 --conf configs/yolov6s.py --data data/coco.yaml --device 0,1,2,3,4,5,6,7

# python tools/infer.py --weights runs/train/exp/weights/best_ckpt.pt --source a.jpg --device cpu