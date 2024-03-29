package twitterlike::Model::DB;

use strict;
use base 'Catalyst::Model::DBIC::Schema';

__PACKAGE__->config(
    schema_class => 'DB',
    
    connect_info => {
        dsn => 'dbi:mysql:twitterlike',
        user => 'root',
        password => 'biobase',
    }
);

=head1 NAME

twitterlike::Model::DB - Catalyst DBIC Schema Model

=head1 SYNOPSIS

See L<twitterlike>

=head1 DESCRIPTION

L<Catalyst::Model::DBIC::Schema> Model using schema L<DB>

=head1 GENERATED BY

Catalyst::Helper::Model::DBIC::Schema - 0.55

=head1 AUTHOR

Bharath B

=head1 LICENSE

This library is free software, you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

1;
