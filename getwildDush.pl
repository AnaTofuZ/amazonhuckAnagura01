#!/usr/bin/env perl
use strict;
use warnings;
use utf8;

use Data::Dumper;
use Socket;
use JSON;

my $socket_receive;
socket($socket_receive,PF_INET,SOCK_STREAM,getprotobyname('tcp')) or die "Cannot create socket:$!";

my $local_port = 9000;

my $pack_addr = sockaddr_in($local_port,INADDR_ANY);

bind($socket_receive,$pack_addr) or die "Cannot bind:$!";

listen($socket_receive,SOMAXCONN) or die "Cannot listen:$!";

my $sock_client;


while (accept($sock_client,$socket_receive)) {
   
    my $content;

    while (my $line = <$sock_client>) {
        $content.= $line;
    }

    close $sock_client;
} 
