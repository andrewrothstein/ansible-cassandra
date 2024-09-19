#!/usr/bin/env sh
set -e
MIRROR=http://downloads.apache.org/cassandra
# https://downloads.apache.org/cassandra/4.0.3/apache-cassandra-4.0.3-bin.tar.gz.sha512
dl_ver() {
    local ver=$1
    local shatype=${2:-sha512}
    local url=$MIRROR/$ver/apache-cassandra-$ver-bin.tar.gz.${shatype}
    printf "  # %s\n" $url
    printf "  '%s': %s:%s\n" $ver $shatype $(curl -sSLf $url | awk '{print $1}')
}

dl_ver ${1:-5.0.0}
