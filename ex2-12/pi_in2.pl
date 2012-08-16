#!/usr/bin/perl -w
use strict;
use Math::Trig qw(pi);
my $radius;
my $line;
my $circumference;
chomp($line = <STDIN>);
if( $line =~ /\d/ ){
    if ($line <= 0){
	$radius = 0;
    }else{
	$radius = $line;
    }
    $circumference = $radius * 2 * pi;
    print "Radius is $radius \n";
    print "circumference is $circumference \n";
}else{
    print "input error \n";
}


