#!/usr/bin/perl -w
use strict;
my $column = '1234567890';
my $width = "20";
my $space = ' ';

if ($ARGV[0] =~ /\d/) {
    $width = shift @ARGV;
    foreach my $arg ( @ARGV ){
	$column = $column x (($width / 10)+1) ;
	print "$column\n";
	printf("${space}%${width}s" ,"${arg}\n");
    }
}else{
    foreach my $arg ( @ARGV ){
	$column = $column x  2;
	print "$column\n";
	printf("${space}%${width}s" ,"${arg}\n");
    }
}


