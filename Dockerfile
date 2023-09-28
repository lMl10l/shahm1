FROM python:3.8-slim-buster

# Install requirements
RUN pip3 install --no-cache-dir -r requirements.txt
CMD ["python3","-m","shahm.py"]
