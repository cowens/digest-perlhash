use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME                => 'Digest::PerlHash',
    AUTHOR              => 'Chas. J. Owens IV <chas.owens@gmail.com>',
    VERSION_FROM        => 'lib/Digest/PerlHash.pm',
    ABSTRACT            => "access perl's internal hashing function",
    ($ExtUtils::MakeMaker::VERSION >= 6.3002
      ? ('LICENSE'=> 'perl')
      : ()),
    PL_FILES            => {},
    PREREQ_PM => {
        'Test::More'          => 0,
	'Test::Pod::Coverage' => 0,
    },
    dist                => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean               => { FILES => 'Digest-PerlHash-*' },
);
