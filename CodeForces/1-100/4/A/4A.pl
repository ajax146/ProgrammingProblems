#!/usr/bin/perl

#! Problem 4A: Watermelon
#! https://codeforces.com/contest/4/problem/A
#! Executed with: perl 5, version 36, subversion 0 (v5.36.0) built for x86_64-linux-gnu-thread-multi
#! Linux version: Linux kernel 6.1.0-10-amd64
#! Submitted on: October 22nd, 2025
#! Codeforces language used: Perl 5.20.1

use strict;
use warnings;

my $w = <STDIN>;
chomp($w);

if ($w > 2 && $w % 2 == 0) {
    print "YES\n";
} else {
    print "NO\n";
}
