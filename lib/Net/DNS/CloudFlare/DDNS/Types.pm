package Net::DNS::CloudFlare::DDNS::Types;

# ABSTRACT: Types for Net::DNS::CloudFlare::DDNS

# Language changing features
use Modern::Perl '2012';
use autodie ':all';
no indirect 'fatal';
use namespace::autoclean;

# We're creating a new library, iirc
use Type::Library -base;

# Theres a bug about using undef as a hashref before this version - found in
# CPAN testers
use Type::Utils 0.039_12 -all;

# VERSION

# We define these types - I don't think I should have to iirc but it didn't
# really work otherwise
class_type('CloudFlare::Client');
class_type('LWP::UserAgent');

1;    # End of Net::DNS::CloudFlare::DDNS::Types

__END__

=head1 SYNOPSIS

Provides types used in Net::DNS::CloudFlare::DDNS

    use Net::DNS::CloudFlare::DDNS::Types 'CloudFlareClient';

=cut
