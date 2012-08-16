#!/usr/bin/perl -w
my @names = qw( fred betty barney dino wilma pebbeles bamm-bamm );
my @lines;
my $n;
print "INPUT LINES. End of line Ctrl+D.\n";
chomp(@lines = <STDIN>);
print "---result---\n";
foreach $n (@lines) {
    print "$names[$n]\n";
}
