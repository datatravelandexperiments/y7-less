if [[ $(y7which less) == /* ]]
then
    export PAGER=less
    export LESS=
    if y7c=$(y7findsubconfig "$1" options)
    then
        LESS=$(cat "$y7c")
    fi
    export LESSCHARSET=utf-8
    if y7c=$(y7findsubconfig "$1" lesskey.conf)
    then
        LESS+=" --lesskey-src=$y7c"
    elif y7c=$(y7sublocate "$1" lesskeys data config)
    then
        LESS+=" -k$y7c"
    fi
    if [[ $(y7which lesspipe) == /* ]]
    then
        export LESSOPEN="${LESSOPEN:-|/usr/bin/lesspipe %s}"
        export LESSCLOSE="${LESSCLOSE:-/usr/bin/lesspipe %s %s}"
    fi
fi
