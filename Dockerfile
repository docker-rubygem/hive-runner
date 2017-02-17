FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=2.1.9

RUN gem install hive-runner --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["hived"]
CMD ["--help"]
