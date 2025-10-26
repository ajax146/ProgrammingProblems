#!/usr/bin/perl

#! Problem 25A: IQ Test
#! https://codeforces.com/contest/25/problem/A
#! Executed with: perl 5, version 36, subversion 0 (v5.36.0) built for x86_64-linux-gnu-thread-multi
#! Linux version: Linux kernel 6.1.0-10-amd64
#! Submitted on: October 23rd, 2025
#! Codeforces language used: Perl 5.20.1

use strict;
use warnings;

my $n = <STDIN>;
chomp($n);

my $line = <STDIN>;
chomp($line);
my @arr = split(' ', $line);

# The situation where the number that dffers is one of the first two
if ($arr[0] % 2 != $arr[1] % 2) {
    if ($arr[0] % 2 != $arr[2] % 2) {
        print "1\n";
    } else {
        print "2\n";
    }
    exit;
}

my $compare = $arr[0] % 2;

for (my $i = 0; $i < @arr; $i++) {
    if ($arr[$i] % 2 != $compare) {
        my $ind = $i+1;
        print "$ind\n";
        exit;
    }
}
