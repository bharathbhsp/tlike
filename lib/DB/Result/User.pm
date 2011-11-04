package DB::Result::User;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use Moose;
use MooseX::NonMoose;
use namespace::autoclean;
extends 'DBIx::Class::Core';

__PACKAGE__->load_components("InflateColumn::DateTime");

=head1 NAME

DB::Result::User

=cut

__PACKAGE__->table("users");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 name

  data_type: 'varchar'
  is_nullable: 0
  size: 255

=head2 password

  data_type: 'varchar'
  is_nullable: 0
  size: 255

=cut

__PACKAGE__->add_columns(
  "id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "name",
  { data_type => "varchar", is_nullable => 0, size => 255 },
  "password",
  { data_type => "varchar", is_nullable => 0, size => 255 },
);
__PACKAGE__->set_primary_key("id");

=head1 RELATIONS

=head2 followers_followers

Type: has_many

Related object: L<DB::Result::Follower>

=cut

__PACKAGE__->has_many(
  "followers_followers",
  "DB::Result::Follower",
  { "foreign.follower_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 followers_users

Type: has_many

Related object: L<DB::Result::Follower>

=cut

__PACKAGE__->has_many(
  "followers_users",
  "DB::Result::Follower",
  { "foreign.user_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 posts

Type: has_many

Related object: L<DB::Result::Post>

=cut

__PACKAGE__->has_many(
  "posts",
  "DB::Result::Post",
  { "foreign.user_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2011-11-04 18:50:05
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:DzrUbgIccfC8xkwPNzjNGw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
