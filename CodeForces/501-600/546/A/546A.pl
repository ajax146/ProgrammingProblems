#!/usr/bin/perl

#! Problem 546A: Soldier and Bananas
#! https://codeforces.com/contest/546/problem/A
#! Executed with: perl 5, version 36, subversion 0 (v5.36.0) built for x86_64-linux-gnu-thread-multi
#! Linux version: Linux kernel 6.1.0-10-amd64
#! Submitted on: October 24th, 2025
#! Codeforces language used: Perl 5.20.1

use strict;
use warnings;


my @arr = split(' ', <STDIN> =~ s/\n$//r);

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
