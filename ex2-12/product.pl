#!/usr/bin/perl -w
my $a;
my $b;
my $c;
print "input a: ";
chomp($a = <STDIN>);
if ($a =~ /\d/) {}else{die "numeric only!";}
print "input b: ";
chomp($b = <STDIN>);
if ($b =~ /\d/) {}else{die "numeric only!";}
$c = $a*$b;
print "result: $c \n";
