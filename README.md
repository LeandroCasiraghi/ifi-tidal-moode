# Tidal connect service raspberry/ARM based on ppy2/ifi-tidal-release

The repository includes dynamic libraries which were scraped from debian packages to facilitate the installation process.
The application has been tested on Moode audio OS, but it should also work on other distros.
NOTE: I removed the 'select-device' script from the execution and modified the files so that my own device is used by default.




1. Download and unzip repository content:
```
sudo wget -c "https://github.com/JanuszBIznesu1/ifi-tidal-moode/archive/refs/heads/master.zip" -O - | busybox unzip -
```
2. Install libportaudio2, which is apparently needed
```
sudo apt-get install libportaudio2
```

3. Navigate to folder:
```
cd ifi-tidal-moode-master
```

4. Install (run application as a service)
Copy repository content to the "/opt/tidal-connect" folder, configure systemd unit and start a Tidal connect service:
```
sudo make install
```

## TODO:
Remove duplicated libraries from 'lib' folder.
