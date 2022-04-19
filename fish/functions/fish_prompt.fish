function fish_prompt
    echo -n \n(set_color 808080)"╭─"
    echo -n (set_color yellow)"$USER"
    echo -n (set_color white)": "
    echo -n (set_color blue)(prompt_pwd)(set_color white)

    if not set -q __fish_git_prompt_show_informative_status
        set -g __fish_git_prompt_show_informative_status 1
    end
    if not set -q __fish_git_prompt_showupstream
        set -g __fish_git_prompt_showupstream none
    end
    if not set -q __fish_git_prompt_char_stateseparator 
        set -g __fish_git_prompt_char_stateseparator "|"
    end
    if not set -q __fish_git_prompt_color_branch
        set -g __fish_git_prompt_color_branch magenta --bold
        set -g __fish_git_prompt_char_cleanstate ""
    end
    if not set -q __fish_git_prompt_color_dirtystate
        set -g __fish_git_prompt_color_dirtystate yellow
    end
    if not set -q __fish_git_prompt_color_stagedstate
        set -g __fish_git_prompt_char_stagedstate ""
        set -g __fish_git_prompt_color_stagedstate green
    end
    if not set -q __fish_git_prompt_color_invalidstate
        set -g __fish_git_prompt_char_invalidstate "✘"
        set -g __fish_git_prompt_color_invalidstate red
    end
    if not set -q __fish_git_prompt_color_untrackedfiles
        set -g __fish_git_prompt_char_untrackedfiles "…"
        set -g __fish_git_prompt_color_untrackedfiles blue
    end

    # printf '%s ' (fish_vcs_prompt | sed 's/\([1-9]\+\)/\1 /g')
    echo -n (fish_vcs_prompt)

    echo -n \n(set_color 808080)"╰─"
    echo -n (set_color red)'❯'(set_color yellow)'❯'(set_color green)'❯ '
    set_color normal
end
