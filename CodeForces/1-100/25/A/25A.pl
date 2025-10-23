#!/usr/bin/perl
use strict;
use warnings;

my $n = <STDIN>;
chomp($n);

my $line = <STDIN>;
chomp($line);
my @arr = split(' ', $line);

# The situation where the number that dffers is one of the first two
if ($arr[0] % 2 != $arr[1] % 2) {
    if ($arr[0] % 2 != $arr[2] % 2) {
        print "1\n";
    } else {
        print "2\n";
    }
    exit;
}

my $compare = $arr[0] % 2;

for (my $i = 0; $i < @arr; $i++) {
    if ($arr[$i] % 2 != $compare) {
        my $ind = $i+1;
        print "$ind\n";
        exit;
    }
}
