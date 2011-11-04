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

sub index :Path :Args(1) {
    my ( $self, $c, $username ) = @_;
    
    my $userinfo = $c->model('DB')->resultset('User')->find({
    	name => $username,	
	});
	
	my $posts = [$c->model('DB')->resultset('Post')->search({
		user_id => $userinfo->id,	
	})];
	$c->stash->{posts} = $posts;
	$c->stash->{userinfo} = $userinfo;
	
}

sub add :Local :Args(0) {
    my ( $self, $c ) = @_;

    $c->response->body('Matched twitterlike::Controller::posts  add action in posts.');
}


=head1 AUTHOR

Bharath B,,,

=head1 LICENSE

This library is free software. You can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

__PACKAGE__->meta->make_immutable;

1;
