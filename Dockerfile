# PlexHW

# Start with the official image
 FROM plexinc/pms-docker

 # Install the 1.4 Beta
 RUN curl -J -L -o /tmp/plexmediaserver.deb https://downloads.plex.tv/plex-media-server/1.4.0.3173-04b80c8/plexmediaserver_1.4.0.3173-04b80c8_amd64.deb
 RUN dpkg -i /tmp/plexmediaserver.deb

 # Disable the update functionality, as to not blow away the 1.4 version with an older 1.3 version
 RUN /bin/rm /etc/cont-init.d/50-plex-update
