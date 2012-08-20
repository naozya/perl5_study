#!/usr/bin/perl -w
use strict;
my @data;
my $match_lines = 0;
my $match_str = "";
if ($ARGV[0]) {
    my $line;
    open(IN,"<$ARGV[0]") or die "$!";
    while ( $line = <IN> ){
	push (@data,$line);
	print $line;
    }
    close(IN);
}else{
    print "no input file!\n";
    exit;
}
print "input pattern: ";
my $in = <STDIN>;
chomp($in);
foreach my $i ( @data ){
    chomp($i);
    if ( $i =~ $in ){
	$match_lines += 1;
	$match_str = $in;
	}
}

print "${match_str} is ${match_lines} times match.\n"
