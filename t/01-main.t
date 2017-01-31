#!perl -T
# Aims to test basic usage of Net::DNS::CloudFlare::DDNS

# Language features
use Modern::Perl '2012';
use autodie ':all';
no indirect 'fatal';
use Readonly;
use Try::Tiny;

# Test modules
use Test::More;
use Test::Exception;

# What we're testing
use Net::DNS::CloudFlare::DDNS;

plan tests => 2;

# Things we need to use
Readonly my $USER  => 'blah';
Readonly my $KEY   => 'blah';
Readonly my $ZONES => [
    {
        zone    => 'zone1',
        domains => [ 'dom1', 'dom2' ],
    },
    {
        zone    => 'zone2',
        domains => [ 'dom3', 'dom4' ],
    },
];
Readonly my $CLASS => 'Net::DNS::CloudFlare::DDNS';

# Construction
lives_ok {
    $CLASS->new(
        user   => $USER,
        apikey => $KEY,
        zones  => $ZONES,
    );
}
"construction with valid credentials works";

Readonly my $ddns => try {    # Ignore any exception
    Net::DNS::CloudFlare::DDNS->new(
        user   => $USER,
        apikey => $KEY,
        zones  => $ZONES,
    );
};

# This should fail in any number of ways but continue despite emitting warnings
lives_ok { $ddns->update };
