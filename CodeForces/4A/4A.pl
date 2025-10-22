#!/usr/bin/perl
use strict;
use warnings;

my $w = <STDIN>;
chomp($w);

if ($w > 2 && $w % 2 == 0) {
    print "YES\n";
} else {
    print "NO\n";
}
