FROM 127.0.0.1:5000/arma3

WORKDIR /home/daemon/steamcmd/arma3
RUN curl -SsL -o mpmissions/A3Wasteland_v1.0.Altis.pbo https://github.com/A3Wasteland/Release_Files/raw/master/A3Wasteland_v1.0.Altis.pbo

ENTRYPOINT ["./arma3server", "-cfg=wasteland/basic", "-config=wasteland/config", "-profiles=wasteland"]
