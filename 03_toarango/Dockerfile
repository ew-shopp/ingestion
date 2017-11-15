FROM mhart/alpine-node:6

RUN apk update
RUN apk add bash
RUN apk add git
RUN npm install datalib
RUN mkdir /code && \
    cd /code && \
    git clone https://github.com/datagraft/Datagraft-RDF-to-Arango-DB.git

ADD main.sh /code/main.sh
ADD transformation-new.json /code/transformation-new.json

ENTRYPOINT ["/code/main.sh"]
