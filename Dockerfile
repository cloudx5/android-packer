FROM openjdk:8-jre

RUN apt-get update && apt-get install -y --no-install-recommends \
		g++-multilib lib32z1 lib32ncurses5 \
	&& rm -rf /var/lib/apt/lists/*
	
ADD node.tar.gz /usr/local/x5
ADD tools.tar.gz /usr/local/x5

CMD /usr/local/x5/tools/app-builder/app-builder.sh 
