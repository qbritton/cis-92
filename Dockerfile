FROM docker.io/python:3.10

RUN pip install django psycopg2-binary
COPY mysite /mysite 
WORKDIR /mysite 
ENV PORT=8080
EXPOSE $PORT
CMD python ./manage.py runserver 0.0.0.0:$PORT