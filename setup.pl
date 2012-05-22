#!/usr/bin/env perl
use strict;
use warnings;

my $files = [qw(
    bashrc
    vimrc
    tmux.conf
)];
my $HOME = $ENV{HOME};

for(@$files){
    system("ln -is $HOME/dotfiles/$_ $HOME/.$_");
}

