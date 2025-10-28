# Problem 141A: Amusing Joke
# https://codeforces.com/contest/141/problem/A
# Executed with: perl 5, version 40, subversion 1 (v5.40.1) built for aarch64-linux-gnu-thread-multi
# Linux version: Linux kernel 6.17.0-6-generic
# Submitted on: October 27th, 2025
# Codeforces language used: Perl 5.20.1

#!/usr/bin/perl

use strict;
use warnings;

chomp(my $one = <STDIN>);
chomp(my $two = <STDIN>);
chomp(my $full = <STDIN>);

my $correct = $one . $two;

my %letter_counts;

# Count letters in the combined name
foreach my $c (split //, $correct) {
    $letter_counts{$c}++;
}

# Subtract letters from the pile
foreach my $c (split //, $full) {
    $letter_counts{$c}--;
}

# Check if all counts are zero
foreach my $val (values %letter_counts) {
    if ($val != 0) {
        print "NO\n";
        exit;
    }
}

print "YES\n";
