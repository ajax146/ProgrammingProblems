# Problem 1065A: Vasya and Chocolate
# https://codeforces.com/contest/1065/problem/A
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
    # s, a, b, c
    my $free_bar_cost = $input_data[1]*$input_data[3];
    my $free_bar_redemtion_max = int($input_data[0]/$free_bar_cost);
    my $leftover_money = $input_data[0] - ($free_bar_redemtion_max * $free_bar_cost);
    my $extra_bars_to_buy = int($leftover_money / $input_data[3]);
    my $free_bars = $free_bar_redemtion_max*$input_data[2];
    my $paid_bars = $free_bar_redemtion_max*$input_data[1] + $extra_bars_to_buy;
    my $total_bars = $free_bars + $paid_bars;

    print $total_bars, "\n";
}
