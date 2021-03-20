FROM python:alpine
RUN pip install flask -i https://pypi.douban.com/simple
ADD app.py ./
CMD ["python", "app.py"]
EXPOSE 5000
