package UUID::Tiny::Patch::UseMRS;

# AUTHORITY
# DATE
# DIST
# VERSION

require Math::Random::Secure;

# testing
#*UUID::Tiny::rand = sub { die };

*UUID::Tiny::rand = \&Math::Random::Secure::rand;

require UUID::Tiny;

1;
# ABSTRACT: Make UUID::Tiny use Math::Random::Secure's rand()

=head1 SYNOPSIS

 use UUID::Tiny::Patch::UseMRS;
 say UUID::Tiny::create_uuid();


=head1 DESCRIPTION

This module makes L<UUID::Tiny> use C<rand()> from L<Math::Random::Secure>
instead of the default C<rand()> that comes with Perl. It is useful for creating
cryptographically secure UUID's. On the other hand, as a note, this makes
generate() around 20 times slower on my PC.

After you C<use> this module, use UUID::Tiny as usual.


=head1 SEE ALSO

L<Math::Random::Secure>

L<UUID::Tiny>

=cut
