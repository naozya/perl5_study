#!/usr/bin/perl -w
my @lines;
print "INPUT LINES. End of line Ctrl+D.\n";
@lines = <STDIN>;
print "---result---\n";
print reverse(@lines);
