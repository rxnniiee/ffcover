@echo off
ECHO ----- FFCover -----
ECHO This script will embed your selected image into an MP3 file
ECHO[
SET /P inputAudio= "Input MP3: "
SET /P inputImage= "Input image: "
SET /P outputAudio= "Output MP3: "
ffmpeg.exe -i %inputAudio% -i %inputImage% -map 0:0 -map 1:0 -c copy -id3v2_version 3 -metadata:s:v title="Album cover" -metadata:s:v comment="Cover (front)" %outputAudio%