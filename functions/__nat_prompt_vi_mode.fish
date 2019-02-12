function __nat_prompt_vi_mode
  printf '\ue62b '
  switch $fish_bind_mode
    case default
      printf 'N'
    case insert
      printf 'I'
    case replace_one
      printf 'R'
    case visual
      printf 'V'
    case '*'
      printf '?'
  end
end
