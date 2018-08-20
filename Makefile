SHELL := /bin/bash 

test:
	python yolo_image.py --model_path model_data/yolov3-tiny.h5 --anchors_path model_data/tiny_yolo_anchors.txt --classes_path model_data/coco_classes.txt /lab/gianoplate/dataset/photo/test/YDXJ0449.jpg

all: model_data/yolov3-tiny.h5

model_data/yolov3-tiny.h5: yolov3-tiny.weights
	python convert.py yolov3-tiny.cfg yolov3-tiny.weights model_data/yolov3-tiny.h5

yolov3.weights:
	wget https://pjreddie.com/media/files/yolov3.weights

yolov3-tiny.weights:
	wget https://pjreddie.com/media/files/yolov3-tiny.weights
