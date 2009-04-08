package Digest::PerlHash;

use warnings;
use strict;

use base 'Exporter';
our %EXPORT_TAGS = ( 'all' => [ qw/perlhash/ ] );
our @EXPORT_OK   = ( @{ $EXPORT_TAGS{'all'} } );
our @EXPORT      = qw//;
our $VERSION = '0.01';

require XSLoader;
XSLoader::load('Digest::PerlHash', $VERSION);

=head1 Digest::PerlHash

Digest::PerlHash - exposes the perl hash function to Perl programs

=head1 VERSION

Version 0.01

=head1 SYNOPSIS

    use Digest::PerlHash qw/perlhash/;
    
    my $hashvalue = perlhash "a string";

=head1 DESCRIPTION

This module exposes the internal hashing function used by perl.
You may prefer to use a different hash function from the Digest::*
hierarchy because there is no guarantee that this function will
return the same values between releases of perl.

=head1 EXPORT

perlhash - hash a string with perl's hash function

=head1 FUNCTIONS

=head2 perlhash

The perhash function is a named unary operator that takes a value
and returns a 32-bit hash of the number as a Perl number.  It 
uses perl's internal hashing algorithm to calcuate the hash, so
the value may be different on different versions of Perl and even
on different versions of perl compiled for different platforms.

=head1 BUGS

There is no guarentee that this function will return the same
value for the same string on different versions of perl or
even on different versions of perl compiled for different 
platforms.

=head1 SEE ALSO

Digest::FNV, Digest::MD5, and Digest::SHA

=head1 AUTHOR

Chas. J. Owens IV, C<< <chas.owens at gmail.com> >>

=head1 ACKNOWLEDGEMENTS

This code is just an interface to the internal perl hash function, 
so all credit should go to the p5p team.

=head1 COPYRIGHT & LICENSE

Copyright 2009 Chas. J. Owens IV, all rights reserved.

This program is free software; you can redistribute it and/or modify it
under the same terms as Perl itself.

=cut

1; # End of Digest::PerlHash
