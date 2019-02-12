set -g fish_prompt_pwd_dir_length 4

set -g NAT_PROMPT_GIT_STATUS_SHOW true
set -g NAT_PROMPT_GIT_STATUS_PREFIX " ["
set -g NAT_PROMPT_GIT_STATUS_SUFFIX ]
set -g NAT_PROMPT_GIT_STATUS_COLOR red
set -g NAT_PROMPT_GIT_STATUS_UNTRACKED \?
set -g NAT_PROMPT_GIT_STATUS_ADDED +
set -g NAT_PROMPT_GIT_STATUS_MODIFIED !
set -g NAT_PROMPT_GIT_STATUS_RENAMED »
set -g NAT_PROMPT_GIT_STATUS_DELETED ✘
set -g NAT_PROMPT_GIT_STATUS_STASHED \$
set -g NAT_PROMPT_GIT_STATUS_UNMERGED =
set -g NAT_PROMPT_GIT_STATUS_AHEAD ⇡
set -g NAT_PROMPT_GIT_STATUS_BEHIND ⇣
set -g NAT_PROMPT_GIT_STATUS_DIVERGED ⇕
set -g NAT_PROMPT_GIT_PROMPT_ORDER untracked added modified renamed deleted stashed unmerged diverged ahead behind
