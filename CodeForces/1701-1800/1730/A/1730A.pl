# Problem 1730A: Planets
# https://codeforces.com/contest/1730/problem/A
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
    chomp(my $line2 = <STDIN>);
    my @input_array = split(' ', $line2);

    my %planet_counts;
    @planet_counts{1..100} = (0) x 100;

    for (my $i = 0; $i < $input_data[0]; $i++) {
        if ($planet_counts{$input_array[$i]} != $input_data[1]) {
            $planet_counts{$input_array[$i]} += 1;
        }
    }
    my $sum = 0;
    for (my $j = 1; $j <= 100; $j++) {
        $sum += $planet_counts{$j};
    }
    print "$sum\n";
}
