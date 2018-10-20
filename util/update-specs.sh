#!/usr/bin/env bash

name=nuklear
repository_url=https://github.com/borodust/bodge-nuklear


if [[ -z  $1 ]] ; then
   echo "Version is not provided!"
   exit 1;
fi

script_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

declare -A platforms
platforms=(["linux"]="so" ["osx"]="dylib" ["windows"]="dll")

declare -A archs
archs=(["x86_64"]="x86_64" ["i686"]="i686")

for arch in "${!archs[@]}" ; do
    for platform in "${!platforms[@]}" ; do
        lib="lib$name.${platforms[$platform]}"
        url="$repository_url/releases/download/$1/$lib-$arch-$platform-$1"

        spec_dir="$script_dir/../"
        spec_url="$url-spec.zip"
        spec_archive=$(mktemp /tmp/$lib-spec.XXXXXXXX)
        mkdir -p "$spec_dir"

        echo "Downloading $lib spec from $spec_url to $spec_archive"
        if ! wget -O "$spec_archive" -q "$spec_url" ; then
            echo "$lib spec download failed"
            exit 1;
        fi
        ( cd $spec_dir && unzip -o $spec_archive )
    done
done
