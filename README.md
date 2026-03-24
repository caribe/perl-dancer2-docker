# perl-dancer2-docker

Docker image with Perl Dancer2 and Starman.

Based on Alpine 3.23, with Perl 5.42 and Dancer2 2.1.0. Uses as many system Perl modules as possibile.

Builded docker image here https://hub.docker.com/repository/docker/caribe/perl-dancer2/general

## Quickstart

Create new Dancer2 application

`docker run --rm -v $PWD/www:/var/www caribe/perl-dancer2 dancer2 gen -p /var/www -a foobar`

Start it

`docker run -v $PWD/www:/var/www -p 3000:3000 caribe/perl-dancer2`

Happy dancing!
