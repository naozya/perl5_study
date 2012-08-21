#!/usr/bin/perl -w
use strict;
sub timestamp(){
    my ($sec,$min,$hour,$mday,$mon,$year,$wday,$yday,$isdst) = localtime($_[0]);
    $year += 1900;
    $mon += 1;
    $mon = sprintf("%02d",$mon);
    $mday = sprintf("%02d",$mday);
    return "$year-${mon}-${mday}";
}

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

    $f_atime = &timestamp($f_stats[8]);
    $f_mtime = &timestamp($f_stats[9]);
    print "$_ \t${f_atime}\t${f_mtime} \n";
}
