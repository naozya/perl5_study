#!/usr/bin/perl -w
use strict;
use Math::Trig qw(pi);
my $radius;
my $line;
my $circumference;
chomp($line = <STDIN>);
if( $line =~ /\d/ ){
    $radius = $line;
    $circumference = $radius * 2 * pi;
    print "Radius is $radius \n";
    print "circumference is $circumference \n";
}else{
    print "input error \n";
} 
