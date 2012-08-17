#!/usr/bin/perl -w
use 5.010;
sub greet{
    my $name = $_[0];
    state $greeted;
    if ($greeted){
	print "Hi $name ! $greeted is also here!\n";
    }else{
	print "Hi $name ! You are the first one here!\n";
    }
    $greeted = $name;
}

greet( "fred" );
greet( "Barney" );
