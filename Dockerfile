FROM python:3.8-slim-buster

#clonning repo 
RUN git clone https://github.com/lml10l/shahm /root/shahm
#working directory 
WORKDIR /root/shahm

# Install requirements
RUN curl -sL https://deb.nodesource.com/setup_16.x | bash -
RUN apt-get install -y nodejs
RUN npm i -g npm
RUN pip3 install --no-cache-dir -r requirements.txt

ENV PATH="/home/shahm/bin:$PATH"

CMD ["python3","-m","shahm.py"]
