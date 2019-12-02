setopt histignorespace
with() { local prefix="$* " str compcontext=normal:normal:_normal; while :; do str=$prefix; vared str && eval $str; done; };
