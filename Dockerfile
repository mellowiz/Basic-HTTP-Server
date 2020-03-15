#FROM python
#FROM alpine
FROM arm32v6/alpine
RUN apk --no-cache add python3
COPY index.html /srv
WORKDIR /srv/
EXPOSE 4444
CMD [ "python3", "-m", "http.server", "4444" ]
