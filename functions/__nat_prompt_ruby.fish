function __nat_prompt_ruby -a fgcolor
  set_color f20
  echo -e -n -s \ue791
  set_color $fgcolor
  echo -e -n " "
  if test -e .ruby-version
    cat .ruby-version | tr -d '\n'
  end
  if test -e .ruby-gemset
    echo -e -n -s '@'
    cat .ruby-gemset | tr -d '\n'
  end
end
