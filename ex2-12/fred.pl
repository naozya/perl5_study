#!/usr/bin/perl -w
my $a;
my $b;
my $c;
print "input a: ";
$a = <STDIN>;
print "input b: ";
chomp($b = <STDIN>);
if ($b =~ /\d/) {}else{die "numeric only!";}
$c = $a x $b;
print "result:\n$c";
