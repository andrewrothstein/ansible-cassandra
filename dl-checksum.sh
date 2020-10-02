#!/usr/bin/env sh
set -e
MIRROR=http://www.apache.org/dist/cassandra

dl_ver() {
    local ver=$1
    local url=$MIRROR/$ver/apache-cassandra-$ver-bin.tar.gz.sha512
    printf "  # %s\n" $url
    printf "  '%s': sha512:%s\n" $ver $(curl -sSL $url | awk '{print $1}')
}

dl_ver ${1:-3.11.8}
