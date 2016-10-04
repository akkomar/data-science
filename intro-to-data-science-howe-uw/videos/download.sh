#!/bin/sh

curl -L https://yt-dl.org/downloads/latest/youtube-dl -o youtube-dl
chmod +x youtube-dl
./youtube-dl 'https://www.youtube.com/playlist?list=PLfF9FGsj0cVQuQUd0RIt0S41UeJFjAPiZ'
