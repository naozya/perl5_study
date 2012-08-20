#!/usr/bin/perl -w
use strict;
use 5.010;

sub catch_int{
    print "catch int signal. exist.\n"; 
    exit;
}
sub catch_hup{
    state $i;
    $i += 1;
    print "catch hup signal. ${i}\n";
}
sub catch_alrm{
    state $i;
    $i += 1;
    print "catch alarm signal. ${i}\n";
}

print "Process ID is $$\n";

foreach my $sig ( qw(int hup alrm) ){
    $SIG{uc $sig} = "catch_${sig}";
}

while (1){
    sleep(1);
};
