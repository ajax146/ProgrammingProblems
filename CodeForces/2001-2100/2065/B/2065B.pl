# Problem 2065B: Skibidus and Ohio
# https://codeforces.com/contest/2065/problem/B
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

    my $ans = length($line);

    for (my $i = 0; $i < length($line)-1; $i++){
        if (substr($line, $i, 1) eq substr($line, $i + 1, 1)) {
            $ans = 1;
        }
    }
    print "$ans\n";
}
