FROM java:8
WORKDIR /usr/src 

RUN apt-get update && apt-get install -y --no-install-recommends \
		g++-multilib lib32z1 lib32ncurses5 \
	&& rm -rf /var/lib/apt/lists/*
	
RUN ln -s /usr/lib/jvm/java-8-openjdk-amd64 /usr/src/java/jre1.8

ADD node.tar.gz /usr/local/x5
ADD tools.tar.gz /usr/local/x5

CMD /bin/bash 
