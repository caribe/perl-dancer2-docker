FROM alpine:3.17

LABEL maintainer="Vincenzo Buttazzo <vincenzo@buttazzo.eu>"

RUN apk add --no-cache alpine-sdk perl-app-cpanminus perl-libwww \
	perl-appconfig \
	perl-capture-tiny \
	perl-clone \
	perl-config-any \
	perl-cpan-meta-check \
	perl-data-optlist \
	perl-exporter-tiny \
	perl-file-sharedir \
	perl-file-which \
	perl-getopt-long \
	perl-hash-merge-simple \
	perl-hash-multivalue \
	perl-html-parser \
	perl-http-cookies \
	perl-http-date \
	perl-http-headers-fast \
	perl-import-into \
	perl-json-maybexs \
	perl-module-build \
	perl-module-build-tiny \
	perl-module-pluggable \
	perl-module-runtime \
	perl-moo \
	perl-params-util \
	perl-params-validate \
	perl-path-tiny \
	perl-plack \
	perl-readonly \
	perl-ref-util \
	perl-role-tiny \
	perl-safe-isa \
	perl-sub-exporter \
	perl-sub-install \
	perl-sub-quote \
	perl-template-toolkit \
	perl-test-eol \
	perl-test-fatal \
	perl-test-leaktrace \
	perl-test-lib \
	perl-test-warnings \
	perl-type-tiny \
	perl-yaml \
	perl-net-server \
	perl-data-dump \
	perl-http-parser-xs \
	&& \
	cpanm Dancer2 Starman && \
	apk del alpine-sdk

WORKDIR /var/app

CMD plackup -p 5000 -s Starman bin/app.psgi

EXPOSE 5000
