#!/usr/bin/env perl
use strict;
use warnings;
use utf8;

use Data::Dumper;
use LWP;
uaw JSON;

my $ua = LWP::UserAgent->new;

my $req = HTTP::Request->new(GET => 'http://127.0.0.1:3000/getwild');

my $res = $ua->request($req);

    if ($res->is_success) {
        
    } else {
        print $res->status_line,"\n";
    }

 
