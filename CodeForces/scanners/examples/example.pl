use strict;
use warnings;

{
    package Scanner;
    sub new {
        my $class = shift;
        my $self = { buffer => [] };
        bless $self, $class;
        return $self;
    }

    sub _refill {
        my ($self) = @_;
        while (!@{$self->{buffer}}) {
            my $line = <STDIN>;
            return if !defined $line;  # EOF
            chomp $line;
            next if $line =~ /^\s*$/;
            @{$self->{buffer}} = split /\s+/, $line;
        }
    }

    sub nextInt {
        my ($self) = @_;
        $self->_refill();
        return int(shift @{$self->{buffer}});
    }

    sub nextDouble {
        my ($self) = @_;
        $self->_refill();
        my $val = shift @{$self->{buffer}};   # assign before numeric operation
        return $val + 0.0;
    }

    sub nextLong {
        my ($self) = @_;
        $self->_refill();
        return int(shift @{$self->{buffer}});  # Perl ints = 64-bit
    }

    sub nextWord {
        my ($self) = @_;
        $self->_refill();
        return shift @{$self->{buffer}};
    }

    sub nextString {
        my ($self) = @_;
        $self->_refill();
        my $line = join ' ', @{$self->{buffer}};
        @{$self->{buffer}} = ();
        return $line;
    }

    sub nextIntArray {
        my ($self, $sorted) = @_;
        $self->_refill();
        my @arr = map { int($_) } @{$self->{buffer}};
        @{$self->{buffer}} = ();
        @arr = sort { $a <=> $b } @arr if $sorted;
        return @arr;
    }

    sub nextLongArray {
        my ($self, $sorted) = @_;
        $self->_refill();
        my @arr = map { int($_) } @{$self->{buffer}};
        @{$self->{buffer}} = ();
        @arr = sort { $a <=> $b } @arr if $sorted;
        return @arr;
    }
}

# Declare scanner
my $scanner = Scanner->new();

# One int
my $i = $scanner->nextInt();
print "$i\n";

# One double
my $a = $scanner->nextDouble();
print "$a\n";

# One 64 bit int (long)
my $l = $scanner->nextLong();
print "$l\n";

# One word
my $w = $scanner->nextWord();
print "$w\n";

# One string/line
my $l2 = $scanner->nextString();
print "$l2\n";

# Int array
my @ia = $scanner->nextIntArray(1);
print join(" ", @ia), "\n";

# 64 bit int array
my @la = $scanner->nextLongArray();
print join(" ", @la), "\n";
