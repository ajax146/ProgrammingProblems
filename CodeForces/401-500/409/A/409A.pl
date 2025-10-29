# Problem 409A: The Great Game
# https://codeforces.com/contest/409/problem/A
# Executed with: perl 5, version 40, subversion 1 (v5.40.1) built for aarch64-linux-gnu-thread-multi
# Linux version: Linux kernel 6.17.0-6-generic
# Submitted on: October 28th, 2025
# Codeforces language used: Perl 5.20.1

#!/usr/bin/perl

use strict;
use warnings;

chomp(my $one = <STDIN>);
chomp(my $two = <STDIN>);
# () = rock, [] = paper, 8< = scissors

my $score_one = 0;
my $score_two = 0;

for (my $i = 0; $i < length($one)-1; $i+=2) {
    my $move_one = substr($one, $i, 2);
    my $move_two = substr($two, $i, 2);
    if ($move_one eq $move_two) {
        next;
    }
    # p1: rock, p2: scissors
    # p1: paper, p2: rock
    # p1: scissors, p2:paper
    if (($move_one eq "()" && $move_two eq "8<") || ($move_one eq "[]" && $move_two eq "()") || ($move_one eq "8<" && $move_two eq "[]")) {
        $score_one += 1;
    } else {
        $score_two += 1;
    }
}

if ($score_two > $score_one) {
    print "TEAM 2 WINS\n";
} elsif ($score_one > $score_two) {
    print "TEAM 1 WINS\n";
} else {
    print "TIE\n";
}
