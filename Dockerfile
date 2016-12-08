FROM java:8

RUN apt-get update && apt-get install -y --no-install-recommends \
		g++-multilib lib32z1 lib32ncurses5 \
	&& rm -rf /var/lib/apt/lists/*
	
ADD node.tar.gz /usr/local/x5
ADD tools.tar.gz /usr/local/x5
ADD model.tar.gz /usr/local/x5
ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64

CMD /usr/local/x5/tools/app-builder/app-builder.sh 
