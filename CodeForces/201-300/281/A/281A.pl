# Problem 281A: Word Capitalization
# https://codeforces.com/contest/281/problem/A
# Executed with: perl 5, version 40, subversion 1 (v5.40.1) built for aarch64-linux-gnu-thread-multi
# Linux version: Linux kernel 6.17.0-6-generic
# Submitted on: October 28th, 2025
# Codeforces language used: Perl 5.20.1

#!/usr/bin/perl

use strict;
use warnings;

chomp(my $w = <STDIN>);
print uc(substr($w, 0, 1)) . substr($w, 1, length($w)), "\n"
