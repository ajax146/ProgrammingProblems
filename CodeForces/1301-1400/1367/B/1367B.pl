# Problem 1367B: Even Array
# https://codeforces.com/contest/1367/problem/B
# Executed with: perl 5, version 40, subversion 1 (v5.40.1) built for aarch64-linux-gnu-thread-multi
# Linux version: Linux kernel 6.17.0-6-generic
# Submitted on: October 28th, 2025
# Codeforces language used: Perl 5.20.1

#!/usr/bin/perl

use strict;
use warnings;

chomp(my $runs = <STDIN>);
for (my $run = 0; $run < $runs; $run++) {
    chomp(my $n = <STDIN>);
    chomp(my $line = <STDIN>);
    my @input_arr = split(' ', $line);
    my $ans = 0;

    for (my $current_index = 0; $current_index < $n; $current_index++) {
        if ($ans == -1) {
            last;
        }
        
    
        if ($input_arr[$current_index] % 2 != $current_index % 2) {
            # Loop ahead in the array and find the next possible swap
            my $temp_pointer = $current_index;
            while (1 == 1) {
                $temp_pointer += 1;

                if ($temp_pointer == $n) {
                    $ans = -1;
                    last;
                }
                if ($temp_pointer % 2 != $current_index % 2 && $input_arr[$temp_pointer] % 2 == $current_index % 2) {
                    my $temp = $input_arr[$temp_pointer];
                    $input_arr[$temp_pointer] = $input_arr[$current_index];
                    $input_arr[$current_index] = $temp;
                    $ans += 1;
                    last;
                }
                
            }
        }
    }
    print "$ans\n";
}
