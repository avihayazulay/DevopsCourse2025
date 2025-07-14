FROM python:3.10
ENV FLASK_APP=flaskr
ENV FLASK_ENV=development
WORKDIR /usr/src/app
COPY . .
WORKDIR /usr/src/app/src/app
RUN touch README.rst
RUN pip install --editable .
RUN flask init-db
EXPOSE 5000
CMD ["flask", "run", "--host=0.0.0.0"]

