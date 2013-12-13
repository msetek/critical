#!/usr/bin/perl
use Mojolicious::Lite;

use Log::Log4perl;

get '/' => sub {
    my $self = shift;

    my $logger = Log::Log4perl->get_logger;
    $logger->fatal( 'Yikes! Something has failed spectacularly' );
    return $self->render(text => 'Oh noes! we are downs!!', status => 500);
};

Log::Log4perl::init('log4perl.conf');
app->start;
