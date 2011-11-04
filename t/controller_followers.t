use strict;
use warnings;
use Test::More;


use Catalyst::Test 'twitterlike';
use twitterlike::Controller::followers;

ok( request('/followers')->is_success, 'Request should succeed' );
done_testing();
