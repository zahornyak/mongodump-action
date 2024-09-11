FROM mongo:latest

WORKDIR /action

COPY entrypoint.sh .
RUN chmod +x entrypoint.sh

ENTRYPOINT ["/action/entrypoint.sh"]
