#!/usr/bin/perl

use v5.10;
use strict;
use warnings;
use autodie;

print "file path ---> ";
chomp(my $filepath = <STDIN>);

open my $fh, "<", $filepath;
chomp(my @strings = <$fh>);
close $fh;

while (1) {
    print "pattern ---> ";
    chomp(my $re = <STDIN>);
    
    my @matched = eval {
        grep /$re/, @strings;
    };
    
    print "== $re ===\n";
    if ($@) {
        print "ERROR: $@";
    } else {
        my $count = @matched;
        printf ">>> %s\n", $_ foreach(@matched);
        printf "count ---> %d\n", $count;
    }
}