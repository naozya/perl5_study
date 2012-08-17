#!/usr/bin/perl -w
use strict;

if ( __FILE__ eq $0 ) {
    my @lines;
    my $line;
    while (defined($line = <>)){
	push @lines , $line
    }
    print reverse @lines
}
