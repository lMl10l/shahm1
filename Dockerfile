FROM lml10l/shahm:slim-buster

#clonning repo 
RUN git clone https://github.com/lml10l/shahm /root/shahm.py
#working directory 
WORKDIR /root/shahm.py

# Install requirements
RUN curl -sL https://deb.nodesource.com/setup_16.x | bash -
RUN apt-get install -y nodejs
RUN npm i -g npm
RUN pip3 install --no-cache-dir -r requirements.txt

ENV PATH="/home/shahm.py/bin:$PATH"

CMD ["python3","-m","shahm.py"]
