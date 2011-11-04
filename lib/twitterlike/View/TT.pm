package twitterlike::View::TT;

use strict;
use base 'Catalyst::View::TT';

__PACKAGE__->config({
    INCLUDE_PATH => [
        twitterlike->path_to( 'root', 'src' ),
        twitterlike->path_to( 'root', 'lib' )
    ],
    TEMPLATE_EXTENSION => '.tt2',
    PRE_PROCESS  => 'config/main',
    WRAPPER      => 'site/wrapper',
    ERROR        => 'error.tt2',
    TIMER        => 0
});

=head1 NAME

twitterlike::View::TT - Catalyst TTSite View

=head1 SYNOPSIS

See L<twitterlike>

=head1 DESCRIPTION

Catalyst TTSite View.

=head1 AUTHOR

Bharath B,,,

=head1 LICENSE

This library is free software. You can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

1;

