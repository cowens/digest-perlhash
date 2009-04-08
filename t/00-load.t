#!perl -T

use Test::More tests => 6;

BEGIN {
	use_ok( 'Digest::PerlHash', qw/perlhash/ );
}

diag( "Testing Digest::PerlHash $Digest::PerlHash::VERSION, Perl $], $^X" );

my %h = (
	foo                => 596015325,
	bar                => -2143252215,
	baz                => -4845582,
	'this is a string' => 633973369,
	10                 => -646710371,
);

for my $k (keys %h) {
	ok($h{$k} == perlhash $k);
}
