FROM archlinux:base

ENV TERM=xterm

RUN pacman -Syu --noconfirm && \
    pacman -S --noconfirm \
      jdk8-openjdk \
      base-devel \
      bash \
      make \
      procps-ng \
      inetutils \
      sudo && \
    pacman -Scc --noconfirm

ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk
ENV PATH=$JAVA_HOME/bin:$PATH

WORKDIR /app
COPY . .

RUN sed -i 's|jdbc:mysql://localhost:3306/|jdbc:mysql://db:3306/|' Settings.ini

RUN make

EXPOSE 8484 8586 8587 8596

ENTRYPOINT ["bash", "./launch.sh"]
