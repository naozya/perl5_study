#!/usr/bin/perl -w
use strict;
my %c;
while (defined(my $line = <>)){
    chomp($line);
    $c{$line} += 1;
}
foreach my $count (sort keys %c){
    print "$count has $c{$count} items\n";
}
