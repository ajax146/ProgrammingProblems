#!/usr/bin/perl

#! Problem 884A: Book Reading
#! https://codeforces.com/contest/884/problem/A
#! Executed with: perl 5, version 40, subversion 1 (v5.40.1) built for aarch64-linux-gnu-thread-multi
#! Linux version: Linux kernel 6.17.0-6-generic
#! Submitted on: October 27th, 2025
#! Codeforces language used: Perl 5.20.1

use strict;
use warnings;

my @info = split(' ', <STDIN> =~ s/\n$//r);
my @busy_time = split(' ', <STDIN> =~ s/\n$//r);

my $n = $info[0];
my $t = $info[1];



for (my $i = 0; $i < @busy_time; $i++) {
    $t -= (86400-$busy_time[$i]);
    if ($t <= 0) {
        print $i+1;
        print "\n";
        exit;
    }
}
