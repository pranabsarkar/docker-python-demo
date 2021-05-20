# 1. Mention the image name with verison if required using :
FROM ubuntu

# 2. updating the existing links
RUN apt-get update
RUN apt-get install python3 -y && apt-get install git -y
RUN apt-get install python3-pip -y
# 3. Getting the code from github
RUN git clone https://github.com/pranabsarkar/docker-python-demo.git

#  4. Installing the python packages
RUN cd docker-python-demo && pip3 install -r requirements.txt

# 5. Running the flask application
CMD cd docker-python-demo && python3 app.py