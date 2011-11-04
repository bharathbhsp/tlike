use strict;
use warnings;

use twitterlike;

my $app = twitterlike->apply_default_middlewares(twitterlike->psgi_app);
$app;

