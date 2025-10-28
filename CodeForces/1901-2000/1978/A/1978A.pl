# Problem 1978A: Alice and Books
# https://codeforces.com/contest/1978/problem/A
# Executed with: perl 5, version 40, subversion 1 (v5.40.1) built for aarch64-linux-gnu-thread-multi
# Linux version: Linux kernel 6.17.0-6-generic
# Submitted on: October 28th, 2025
# Codeforces language used: Perl 5.20.1

#!/usr/bin/perl

use strict;
use warnings;

chomp(my $runs = <STDIN>);
for (my $run = 0; $run < $runs; $run++) {
    chomp(my $waste = <STDIN>);
    chomp(my $line = <STDIN>);

    my @input_data = split(' ', $line);
    my $last_value = pop @input_data;
    # Sort highest to lowest
    @input_data = sort { $b <=> $a } @input_data;

    my $ans = $input_data[0] + $last_value;
    print "$ans\n";
}
