#!/usr/bin/perl -w
use strict;
my $stdfile = 'ls.out';
my $errfile = 'ls.err';

system "ls -l >$stdfile 2>$errfile";
