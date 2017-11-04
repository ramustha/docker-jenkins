FROM  jenkins/jenkins:2.87
ENV JAVA_OPTS="-Xms768m -Xmx768m -Djenkins.install.runSetupWizard=false"

COPY plugins.txt /usr/share/jenkins/ref/plugins.txt
RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins.txt

USER root

RUN apt-get update \
      && apt-get upgrade -y \
      && apt-get install -y sudo libltdl-dev \
      && rm -rf /var/lib/apt/lists/*

RUN echo "jenkins ALL=NOPASSWD: ALL" >> /etc/sudoers

# Install Maven
ENV MAVEN_VERSION 3.3.9
ENV M2_HOME /opt/maven
USER root
RUN wget http://mirrors.hostingromania.ro/apache.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz -O - | tar -xz && mv apache-maven-$MAVEN_VERSION $M2_HOME
RUN ln -s $M2_HOME/bin/mvn /usr/bin/mvn
USER ${user}

VOLUME "root/.m2"