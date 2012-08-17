#!/usr/bin/perl -w
use strict;
my %name = (
	    fred   => 'flintstone',
	    barney => 'rubble',
	    wilma  => 'flintstone'
);
my $line = <STDIN>;
chomp($line);
print "$name{$line}\n";
