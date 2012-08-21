#!/usr/bin/perl -w
use strict;

opendir(DIR,"./");
my @files = readdir(DIR);
closedir(DIR);

foreach(@files){
    if ($_ eq "." or $_ eq ".."){
	next;
    }
    my $f_atime;
    my $f_mtime;
    my @f_stats;
    @f_stats = stat($_);
    $f_atime = $f_stats[8];
    $f_mtime = $f_stats[9];
    print "$_ \t${f_atime}\t${f_mtime} \n";
}
