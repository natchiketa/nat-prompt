# Defined in - @ line 1
function __nat_prompt_section -a prebgcolor bgcolor color postbgcolor content prefix suffix
  if test $prefix != ""
    set_color --background $prebgcolor
    set_color $bgcolor
    echo -e -n -s $prefix
  end

  set_color --background $bgcolor
  set_color $color
  echo -e -n -s $content

  if test $suffix != ""
    set_color --background $postbgcolor
    set_color $bgcolor
    echo -e -n -s $suffix
  end

  set_color normal
end
