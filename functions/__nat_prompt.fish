# Defined in - @ line 1
function __nat_prompt
  set userhost_bg 090
  set userhost_fg white
  set pwd_bg 0303aa
  set pwd_fg f7ee91
  set git_bg d66000
  set git_fg white
  set ruby_bg 400
  set ruby_fg fff

  # user@host
  __nat_prompt_section normal $userhost_bg $userhost_fg $pwd_bg (__nat_prompt_userhost) \ue0be \ue0bc

  if test -d .git
    set next_bg $git_bg
  else if begin; test -e .ruby-version; or test -e .ruby-gemset; end
    set next_bg $ruby_bg
  else
    set next_bg normal
  end

  # pwd
  set_color --bold
  __nat_prompt_section $userhost_bg $pwd_bg $pwd_fg $next_bg (prompt_pwd) "" \ue0bc 

  if begin; test -e .ruby-version; or test -e .ruby-gemset; end
    set next_bg $ruby_bg
  else
    set next_bg normal
  end

  # Git
  if test -d .git
    __nat_prompt_section $pwd_bg $git_bg $git_fg $next_bg (__nat_prompt_git) "" \ue0bc
  end

  # Ruby
  if begin; test -e .ruby-version; or test -e .ruby-gemset; end
    __nat_prompt_section "" $ruby_bg $ruby_fg normal (__nat_prompt_ruby $ruby_fg) "" \ue0bc
  end

  printf '\n'

  __nat_prompt_section normal 070 white 070 (__nat_prompt_vi_mode) \ue0ba \ue0ba

  set_color 070
  printf '\ue0bc '
  set_color normal
end
