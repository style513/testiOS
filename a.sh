#!/bin/bash

a=`grep 'zyj_gitLabel版本:*' ./a`
echo $a
version=`echo $a|grep -o '[0-9]\+'`
version=$[version+1]
version=$((10#$version))
#version=9
version=$(printf "%04d" "$((version))")
str2=" zyj_gitLabel版本:  "$version
#echo $str2
grep 'zyj_gitLabel版本:*' ./a
sed -ig "s/$a/$str2/"  ./a
