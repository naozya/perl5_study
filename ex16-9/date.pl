#!/usr/bin/perl -w
use strict;
my $result;

$result = `date "+%w"`;
if (($result eq "0") or ($result eq "6")) {
    print "go play\n";
}else{
    print "get to work\n";
}
