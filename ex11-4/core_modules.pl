#!/usr/bin/perl -w
use strict;
use Module::CoreList;
my %modules = %{ $Module::CoreList::version{5.010} };

foreach my $key (%modules) {
    print "$key\n";
}
