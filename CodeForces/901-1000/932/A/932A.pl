#!/usr/bin/perl

#! Problem 932A: Palindromic Supersequence
#! https://codeforces.com/contest/932/problem/A
#! Executed with: perl 5, version 40, subversion 1 (v5.40.1) built for aarch64-linux-gnu-thread-multi
#! Linux version: Linux kernel 6.17.0-6-generic
#! Submitted on: October 27th, 2025
#! Codeforces language used: Perl 5.20.1

use strict;
use warnings;

chomp(my $n = <STDIN>);
print $n, scalar reverse($n), "\n";
