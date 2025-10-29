# Problem 2094A: Trippi Troppi
# https://codeforces.com/contest/2094/problem/A
# Executed with: perl 5, version 40, subversion 1 (v5.40.1) built for aarch64-linux-gnu-thread-multi
# Linux version: Linux kernel 6.17.0-6-generic
# Submitted on: October 28th, 2025
# Codeforces language used: Perl 5.20.1

#!/usr/bin/perl

use strict;
use warnings;
chomp(my $runs = <STDIN>);
for (my $run = 0; $run < $runs; $run++) {
    chomp(my $line = <STDIN>);
    my @input_data = split(' ', $line);
    print substr($input_data[0], 0, 1), substr($input_data[1], 0, 1), substr($input_data[2], 0, 1), "\n";
}
