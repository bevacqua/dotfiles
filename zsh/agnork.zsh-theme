#
# Based on agnoster's Theme - https://gist.github.com/3712874
# A Powerline-inspired theme for ZSH
#
# # README
#
# In order for this theme to render correctly, you will need a
# [Powerline-patched font](https://gist.github.com/1595572).
#
# In addition, I recommend the
# [Solarized theme](https://github.com/altercation/solarized/) and, if you're
# using it on Mac OS X, [iTerm 2](http://www.iterm2.com/) over Terminal.app -
# it has significantly better color fidelity.

### Segment drawing
# A few utility functions to make it easy and re-usable to draw segmented prompts

CURRENT_BG='NONE'
SEGMENT_SEPARATOR=''

# Begin a segment
# Takes two arguments, background and foreground. Both can be omitted,
# rendering default background/foreground.
prompt_segment() {
  local bg fg
  [[ -n $1 ]] && bg="%K{$1}" || bg="%k"
  [[ -n $2 ]] && fg="%F{$2}" || fg="%f"
  if [[ $CURRENT_BG != 'NONE' && $1 != $CURRENT_BG ]]; then
    echo -n " %{$bg%F{$CURRENT_BG}%}$SEGMENT_SEPARATOR%{$fg%} "
  else
    echo -n "%{$bg%}%{$fg%} "
  fi
  CURRENT_BG=$1
  [[ -n $3 ]] && echo -n $3
}

# End the prompt, closing any open segments
prompt_end() {
  if [[ -n $CURRENT_BG ]]; then
    echo -n " %{%k%F{$CURRENT_BG}%}$SEGMENT_SEPARATOR"
  else
    echo -n "%{%k%}"
  fi
  echo -n "%{%f%}"
  CURRENT_BG=''
}

### Prompt components
# Each component will draw itself, and hide itself if no information needs to be shown

# Git: branch/detached head, dirty status
prompt_git() {
  local ref dirty
  if $(git rev-parse --is-inside-work-tree >/dev/null 2>&1); then
    ZSH_THEME_GIT_PROMPT_DIRTY=' இ'
    dirty=$(parse_git_dirty)
    ref=$(git symbolic-ref HEAD 2> /dev/null) || ref="➦ $(git show-ref --head -s --abbrev |head -n1 2> /dev/null)"
    if [[ -n $dirty ]]; then
      prompt_segment yellow black
    else
      prompt_segment green black
    fi

    echo -n "${ref/refs\/heads\// }$dirty"
  fi
}

function svn_is_inside() {
  if $(svn info >/dev/null 2>&1); then
    return 0
  fi
  return 1
}

function svn_parse_dirty() {
  if svn_is_inside; then
    root=`svn info 2> /dev/null | sed -n 's/^Working Copy Root Path: //p'`
    if $(svn status $root 2> /dev/null | grep -Eq '^\s*[ACDIM!?L]'); then
      return 0
    fi
  fi
  return 1
}

function svn_branch_name() {
  if svn_is_inside; then
    svn info 2> /dev/null | \
      awk -F/ \
      '/^URL:/ { \
        for (i=0; i<=NF; i++) { \
          if ($i == "branches" || $i == "tags" ) { \
            print $(i+1); \
            break;\
          }; \
          if ($i == "trunk") { print $i; break; } \
        } \
      }'
  fi
}

function svn_rev() {
  if svn_is_inside; then
    svn info 2> /dev/null | sed -n 's/Revision:\ //p'
  fi
}

prompt_svn() {
  if svn_is_inside; then
    ZSH_THEME_SVN_PROMPT_DIRTY=' இ'
    local ref dirty
    if svn_parse_dirty; then
      dirty=$ZSH_THEME_SVN_PROMPT_DIRTY
      prompt_segment yellow black
    else
      prompt_segment green black
    fi
    echo -n "Տ $(svn_branch_name) $(svn_rev)$dirty"
  fi
}

# Dir: current working directory
prompt_dir() {
  prompt_segment blue black '%~'
}

## Main prompt
build_prompt() {
  RETVAL=$?
  prompt_git
  prompt_svn
  prompt_dir
  prompt_end
}

PROMPT='%{%f%b%k%}$(build_prompt)
» '
