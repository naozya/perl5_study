#!/usr/bin/perl -w
use strict;
my $e;
foreach $e (sort keys %ENV){
    print "$e $ENV{$e}\n";
}
