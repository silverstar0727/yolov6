FROM nvcr.io/nvidia/pytorch:22.06-py3

WORKDIR /workspace
COPY . .

RUN apt-get update && apt-get install libgl1-mesa-glx -y
RUN pip install -r YOLOv6/requirements.txt
