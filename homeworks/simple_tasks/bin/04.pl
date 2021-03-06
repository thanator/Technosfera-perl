#!/usr/bin/perl

use strict;
use warnings;

=encoding UTF8
=head1 SYNOPSYS

Поиск номера первого ненулевого бита.

=head1 run ($x)

Функция поиска первого ненулевого бита в 32-битном числе (кроме 0).
Пачатает номер первого ненулевого бита в виде "$num\n"

Примеры: 

run(1) - печатает "0\n".

run(4) - печатает "2\n"

run(6) - печатает "1\n"

=cut

sub run {
    my ($x) = @_;
    my $num = 0;

    # ...
    # Вычисление номера первого ненулевого бита 
    # ...
    # я долго тупил, нет, съёзно.
    # сначала долго пытался что-то сделать с побитовыми проверками. 
    # потом дошло, что можно проверять на остаток от деления
    # сначала делал проверку при делении на 0xf, потом на 0x10 и лишь потом допёр, что надо бы проверять
    # на двоичной системе. иначально я делил на 10 в двоичной системе, как написано в следующем комменте,
    # $x = $x / 0b10 ;
    # но потом, в виде дани побитовому сдвигу, с коим я парился сначала, сделал сдвиг.

    while ($x % 0b10 == 0){
        $x = $x >> 1 ;
        $num++;
}

    print "$num\n";
}

1;
