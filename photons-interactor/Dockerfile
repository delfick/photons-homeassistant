ARG BUILD_FROM
FROM $BUILD_FROM

ARG TARGETPLATFORM
RUN echo $TARGETPLATFORM

RUN apk add --no-cache python3 py3-pip gcc python3-dev musl-dev linux-headers g++
COPY make_uvloop.sh /make_uvloop.sh
RUN bash /make_uvloop.sh $TARGETPLATFORM

RUN pip install --break-system-packages lifx-photons-interactor==0.16.2

WORKDIR /config/photons

COPY run.sh /run.sh
RUN chmod a+x /run.sh

CMD [ "/run.sh" ]
