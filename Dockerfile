FROM python:3.9-slim-buster

WORKDIR /app
COPY ./src/ /app
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1
#RUN pip3 install -r ./requirements.txt
RUN pip3 install --trusted-host pypi.org --trusted-host pypi.python.org --trusted-host files.pythonhosted.org  -r ./requirements.txt
EXPOSE 8080
RUN chmod +x ./gunicorn_starter.sh
ENTRYPOINT [ "sh","gunicorn_starter.sh"]
