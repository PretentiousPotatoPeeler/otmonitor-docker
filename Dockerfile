FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
      wget \
      unzip \
  && rm -rf /var/lib/apt/lists/*

WORKDIR /app

RUN wget https://github.com/hvxl/otmonitor/archive/master.zip && \
      unzip master.zip && \
      cd otmonitor-master && \
      wget http://otgw.tclcode.com/download/tclkit-x64 -O ./tclkit && \
      wget https://storage.googleapis.com/google-code-archive-downloads/v2/code.google.com/tclkit/sdx-20110317.kit -O ./sdx.kit && \
      cp ./tclkit ./runtime && \
      chmod 777 ./tclkit && \
      ./tclkit sdx.kit wrap otmonitor -runtime runtime && \
      chmod 777 otmonitor

FROM ubuntu:latest
WORKDIR /root
COPY --from=0 /app/otmonitor-master/otmonitor /usr/bin
CMD ["otmonitor", "--daemon", "-f /config/otmonitor.conf"]

