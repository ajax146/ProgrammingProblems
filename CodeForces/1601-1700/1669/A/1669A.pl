#!/usr/bin/perl

#! Problem 1669A: Division?
#! https://codeforces.com/contest/1669/problem/A
#! Executed with: perl 5, version 40, subversion 1 (v5.40.1) built for aarch64-linux-gnu-thread-multi
#! Linux version: Linux kernel 6.17.0-6-generic
#! Submitted on: October 27th, 2025
#! Codeforces language used: Perl 5.20.1

use strict;
use warnings;

chomp(my $runs = <STDIN>);
for (my $run = 0; $run < $runs; $run++) {
    chomp(my $n = <STDIN>);

    if ($n >= 1900) {
        print "Division 1\n";
    } elsif ($n >= 1600) {
        print "Division 2\n";
    } elsif ($n >= 1400) {
        print "Division 3\n";
    } else {
        print ("Division 4\n");
    }
}
