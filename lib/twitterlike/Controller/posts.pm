package twitterlike::Controller::posts;
use Moose;
use namespace::autoclean;

BEGIN {extends 'Catalyst::Controller'; }

=head1 NAME

twitterlike::Controller::posts - Catalyst Controller

=head1 DESCRIPTION

Catalyst Controller.

=head1 METHODS

=cut


=head2 index

=cut

sub index :Path :Args(0) {
    my ( $self, $c ) = @_;

    $c->response->body('Matched twitterlike::Controller::posts in posts.');
}

sub add :Local :Args(0) {
    my ( $self, $c ) = @_;

    $c->response->body('Matched twitterlike::Controller::posts  add action in posts.dasdas');
}


=head1 AUTHOR

Bharath B,,,

=head1 LICENSE

This library is free software. You can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

__PACKAGE__->meta->make_immutable;

1;
