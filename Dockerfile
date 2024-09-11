FROM mongo:latest

WORKDIR /action

COPY entrypoint.sh .
COPY cleanup.sh .
RUN chmod +x entrypoint.sh
RUN chmod +x cleanup.sh

ENTRYPOINT ["/action/entrypoint.sh"]
