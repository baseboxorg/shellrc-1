ln -s `pwd`/tmux.conf ~/.tmux.conf
ln -s `pwd`/inputrc ~/.inputrc
ln -s `pwd`/keynavrc ~/.keynavrc

elinks_conf=$HOME/.elinks/elinks.conf
if [ -w $elinks_conf ]; then
  if ! grep -q "source \".*.shell/elinks\.conf\"" $elinks_conf; then
    echo "source \"$HOME/.shell/elinks.conf\"" >> $elinks_conf
  fi
else
    echo "source \"$HOME/.shell/elinks.conf\"" >> $elinks_conf
fi
