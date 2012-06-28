package Password::Policy::Encryption::MD5;

# ABSTRACT: The MD5 algorithm for Password::Policy

use strict;
use warnings;

use parent 'Password::Policy::Encryption';

use Digest::MD5 qw/md5_hex/;

sub enc {
    my $self = shift;
    my $password = $self->prepare(shift);
    return md5_hex($password);
}

1;

__END__


