FROM bitnami/pytorch:latest
ADD req.txt
RUN pip install -r req.txt
WORKDIR /usr/src/predict
ADD 7_predict.py  .
ADD dogs_cats_model-pth  .
CMD ["python", "predict.py"]