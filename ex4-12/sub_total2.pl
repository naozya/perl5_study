#!/usr/bin/perl -w
use strict;

sub total {
    my $t = 0;
    foreach my $n ( @_ ) {
	$t += $n;
    }
    return $t;
}

my @fred = 1..1000;
my $fred_total = total(@fred);
print "The total of \@fred is $fred_total .\n";
print "Enter some numbers on separate lines: ";
my $user_total = total(<STDIN>);
print "The total of those numbers is $user_total.\n";