FROM python

RUN groupadd -r uwsgi && useradd -r -g uwsgi uwsgi
RUN pip install Flask uWSGI requests redis
WORKDIR /app
COPY app /app

EXPOSE 9090 9191
USER uwsgi
COPY cmd.sh /

CMD ["/cmd.sh"]
