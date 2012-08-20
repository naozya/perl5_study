#!/usr/bin/perl -w
use strict;
use DateTime;
my $year  = $ARGV[0];
my $month = $ARGV[1];
my $day   = $ARGV[2];

my $dt = DateTime->new(
		      year  => $year,
		      month => $month,
		      day   => $day,
);
my $nt = DateTime->now;

my $duration = $nt - $dt;
my @units = $duration->in_units( qw(years months days) );
printf "%d year(s), %d month(s) , and %d day(s)\n", @units;
