#!/usr/bin/perl

use v5.10;
use strict;
use warnings;
use autodie;

sub signal_handler {
    state %counter;
    
    my $signame = shift;
    print "<< $signame >>\n";
    $counter{$signame}++;
    if ($signame eq "INT") {
        while (my ($k, $v) = each %counter) {
            printf "%s ---> %d\n", $k, $v;
        }
        exit;
    }
}

foreach(`kill -l`) {
    chomp;
    foreach (split / /, $_) {
        $SIG{$_} = "signal_handler";
    }
}

while (1) {
    # PASS
}
