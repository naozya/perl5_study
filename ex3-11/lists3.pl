#!/usr/bin/perl -w
my @lines;
my $n;
print "INPUT LINES. End of line Ctrl+D.\n";
chomp(@lines = <STDIN>);
@lines = sort(@lines);
print "---result---\n";
foreach $n (@lines) {
    print "$n\n";
}
