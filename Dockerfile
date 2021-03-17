# set the base image
FROM debian

# update sources list
RUN apt-get clean
RUN apt-get update

# install basic apps, one per line for better caching
RUN apt-get install -qy git
RUN apt-get install -qy locales
RUN apt-get install -qy nano
RUN apt-get install -qy tmux
RUN apt-get install -qy wget

# install app runtimes and modules
RUN apt-get install -qy python3
RUN apt-get install -qy python3-psycopg2
RUN apt-get install -qy python3-pystache
RUN apt-get install -qy python3-yaml

# cleanup
RUN apt-get -qy autoremove
