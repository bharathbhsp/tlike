use strict;
use warnings;
use Test::More;


use Catalyst::Test 'twitterlike';
use twitterlike::Controller::posts;

ok( request('/posts')->is_success, 'Request should succeed' );
done_testing();
