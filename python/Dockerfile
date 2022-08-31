FROM python:3
WORKDIR /usr/app
COPY ./requirements.txt /usr/app/requirements.txt
RUN pip install --upgrade pip
RUN pip install --no-cache-dir --upgrade -r /usr/app/requirements.txt
VOLUME [ "/usr/app" ]
EXPOSE 80 443 1080 3000 8050 8080
CMD ["mkdir", "-p", "/usr/app/src"]
