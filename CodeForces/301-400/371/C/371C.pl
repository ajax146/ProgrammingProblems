# Problem 371C: Hamburgers
# https://codeforces.com/contest/371/problem/C
# Executed with: perl 5, version 40, subversion 1 (v5.40.1) built for aarch64-linux-gnu-thread-multi
# Linux version: Linux kernel 6.17.0-6-generic
# Submitted on: October 27th, 2025
# Codeforces language used: Perl 5.20.1

#!/usr/bin/perl

use strict;
use warnings;

chomp(my $recipe = <STDIN>);
my @storage = split(' ', <STDIN> =~ s/\n$//r); #Bread, Sausage, Cheese
my @shop_prices = split(' ', <STDIN> =~ s/\n$//r); #Bread, Sausage, Cheese
chomp(my $money = <STDIN>);

# Calculate the amounts of bread, cheese, and sausage we need per burger
my $bread = 0;
my $cheese = 0;
my $sausage = 0;

foreach my $c (split //, $recipe) {
    if ($c eq 'B') {
        $bread += 1;
    } elsif ($c eq 'C') {
        $cheese += 1;
    } else {
        $sausage += 1;
    }
}

my $total = 0;
# We are going to brute force until we use all the supplies we have
# Start by setting all irrelevant supplies to zero
if ($bread == 0) {
    $storage[0] = 0;
}
if ($sausage == 0) {
    $storage[1] = 0;
}
if ($cheese == 0) {
    $storage[2] = 0;
}

my $all_supplies = $storage[0] + $storage[1] + $storage[2];

while ($all_supplies != 0) {
    # We might need to buy supplies in this stage
    my $missing_bread = ($bread - $storage[0]);
    my $missing_sausage = ($sausage - $storage[1]);
    my $missing_cheese = ($cheese - $storage[2]);

    if ($missing_bread > 0) {
        if ($missing_bread * $shop_prices[0] > $money) {
            print "$total \n";
            exit;
        } else {
            $storage[0] += $missing_bread;
            $all_supplies += $missing_bread;
            $money -= ($missing_bread * $shop_prices[0]);
        }
    }

    if ($missing_sausage > 0) {
        if ($missing_sausage * $shop_prices[1] > $money) {
            print "$total \n";
            exit;
        } else {
            $storage[1] += $missing_sausage;
            $all_supplies += $missing_sausage;
            $money -= ($missing_sausage * $shop_prices[1]);
        }
    }

    if ($missing_cheese > 0) {
        if ($missing_cheese * $shop_prices[2] > $money) {
            print "$total \n";
            exit;
        } else {
            $storage[2] += $missing_cheese;
            $all_supplies += $missing_cheese;
            $money -= ($missing_cheese * $shop_prices[2]);
        }
    }

    # We have, or bought, enough to make a burger. Remove from inv
    $storage[0] -= $bread;
    $storage[1] -= $sausage;
    $storage[2] -= $cheese;
    $all_supplies -= $bread;
    $all_supplies -= $sausage;
    $all_supplies -= $cheese;
    $total += 1;
}

# At this point its time to calculate how many entire burgers we can afford
my $total_cost = $bread*$shop_prices[0] + $sausage*$shop_prices[1] + $cheese*$shop_prices[2];
my $remaining_burger = int($money/$total_cost);
$total += $remaining_burger;

print "$total\n";
