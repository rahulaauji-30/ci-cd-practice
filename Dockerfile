FROM python:3.12.1-slim
LABEL maintainer="Rahul Parihar"
LABEL email="rahulaauji71@gmail.com"
WORKDIR /app
COPY . /app
RUN pip install --no-cache-dir -r requirements.txt
EXPOSE 3000
CMD [ "python","main.py" ]