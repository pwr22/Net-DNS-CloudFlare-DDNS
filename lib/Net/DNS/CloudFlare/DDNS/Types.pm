package Net::DNS::CloudFlare::DDNS::Types;
# ABSTRACT: Types for Net::DNS::CloudFlare::DDNS

use Modern::Perl '2012';
use autodie      ':all';
no  indirect     'fatal';
use namespace::autoclean;

use Type::Library -base;
# Theres a bug about using undef as a hashref before this version
use Type::Utils 0.039_12 -all;

# VERSION

class_type 'CloudFlare::Client';
class_type 'LWP::UserAgent';

1; # End of Net::DNS::CloudFlare::DDNS::Types

__END__

=head1 SYNOPSIS

Provides types used in Net::DNS::CloudFlare::DDNS

    use Net::DNS::CloudFlare::DDNS::Types 'CloudFlareClient';

=cut
