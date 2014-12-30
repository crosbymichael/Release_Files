FROM crosbymichael/arma3

WORKDIR /home/daemon/steamcmd/arma3
RUN curl -SsL -o mpmissions/A3Wasteland_v1.0.Altis.pbo https://github.com/A3Wasteland/Release_Files/raw/master/A3Wasteland_v1.0b.Altis.pbo

ENTRYPOINT ["./arma3server", "-cfg=wasteland/basic", "-config=wasteland/config", "-profiles=wasteland"]
