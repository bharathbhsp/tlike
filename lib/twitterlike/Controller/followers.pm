package twitterlike::Controller::followers;
use Moose;
use namespace::autoclean;
use Data::Dumper;

BEGIN {extends 'Catalyst::Controller'; }

=head1 NAME

twitterlike::Controller::followers - Catalyst Controller

=head1 DESCRIPTION

Catalyst Controller.

=head1 METHODS

=cut


=head2 index

=cut

sub index :Path :Args(0) {
    my ( $self, $c ) = @_;

    $c->response->body('Matched twitterlike::Controller::followers in followers.');
}

sub my :Local :Args(1) {
    my ( $self, $c , $args) = @_;

	my @f = $c->model('DB')->resultset('Follower')->search({
		user_id => $args,	
	}, {select => 'follower_id'}
	);
    
    my @names;
    foreach(@f) {
    	push @names, $_->follower->name;
    }
    
    $c->stash->{json} = join(",", @names);
    $c->detach( $c->view("JSON") );
}


=head1 AUTHOR

Bharath B,,,

=head1 LICENSE

This library is free software. You can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

__PACKAGE__->meta->make_immutable;

1;
