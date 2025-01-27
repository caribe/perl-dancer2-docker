FROM alpine:3.21

LABEL maintainer="Vincenzo Buttazzo <vincenzo@buttazzo.eu>"

RUN apk add --no-cache perl-dev alpine-sdk \
	perl-app-cpanminus \
	perl-capture-tiny \
	perl-clone \
	perl-config-any \
	perl-cpan-meta-check \
	perl-data-dump \
	perl-exporter-tiny \
	perl-file-share \
	perl-file-sharedir-install \
	perl-file-which \
	perl-hash-merge-simple \
	perl-html-parser \
	perl-http-cookies \
	perl-http-parser-xs \
	perl-import-into \
	perl-libwww \
	perl-module-build-tiny \
	perl-module-pluggable \
	perl-moo \
	perl-net-server \
	perl-params-validate \
	perl-path-tiny \
	perl-plack \
	perl-ref-util \
	perl-safe-isa \
	perl-sub-exporter \
	perl-template-toolkit \
	perl-test-eol \
	perl-test-fatal \
	perl-test-lib \
	perl-test-warnings \
	perl-type-tiny \
	perl-yaml \
	&& \
    cpanm Dancer2 Starman && \
    apk del alpine-sdk perl-dev

CMD plackup -p 3000 -s Starman /var/www/bin/app.psgi

EXPOSE 3000
