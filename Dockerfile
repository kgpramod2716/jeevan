# Use an official Python runtime as a parent image
FROM python:3.8-slim

EXPOSE 8080

WORKDIR /TELECOMCHURN

COPY requirements.txt .

RUN pip3 install -r requirements.txt

COPY . .

ENTRYPOINT [ "streamlit", "run"."pramod.py"]

CMD ["python","./pramod.py"]