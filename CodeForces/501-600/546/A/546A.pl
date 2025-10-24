#!/usr/bin/perl
use strict;
use warnings;


my $line = <STDIN>;
chomp($line);
my @arr = split(' ', $line);

my $k = $arr[0];
my $n = $arr[1];
my $w = $arr[2];

my $cost_multiplier = (($w*($w+1))/2);
my $total_cost = $k * $cost_multiplier;
my $to_borrow = $total_cost - $n;

if ($to_borrow < 0) {
    print "0\n";
} else {
    print "$to_borrow\n";
}
