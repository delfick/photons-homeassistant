ARG BUILD_FROM
FROM $BUILD_FROM

RUN apk add --no-cache python3 py3-pip gcc python3-dev musl-dev linux-headers g++

RUN pip install lifx-photons-interactor==0.12.7

WORKDIR /config/photons

COPY run.sh /run.sh
RUN chmod a+x /run.sh

CMD [ "/run.sh" ]
