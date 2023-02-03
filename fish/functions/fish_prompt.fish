function fish_prompt
    echo -n \n(set_color 808080)"╭"
    echo -n (set_color yellow)"$USER"
    echo -n (set_color normal)": "
    echo -n (set_color blue)(prompt_pwd)(set_color normal)


    # Branch Names and Status
    if not set -q __fish_git_prompt_show_informative_status
        set -g __fish_git_prompt_show_informative_status true
    end

    # Upstream Name
    if not set -q __fish_git_prompt_showupstream
        set -g __fish_git_prompt_showupstream none
    end

    # Separator
    if not set -q __fish_git_prompt_char_stateseparator
        set -g __fish_git_prompt_char_stateseparator ""
    end


    # Branch Color
    if not set -q __fish_git_prompt_color_branch
        set -g __fish_git_prompt_color_branch brred --bold
        set -g __fish_git_prompt_char_cleanstate ""
    end


    # Staged File
    if not set -q __fish_git_prompt_color_stagedstate
        set -g __fish_git_prompt_char_stagedstate ""
        set -g __fish_git_prompt_color_stagedstate green
    end


    # Changed Files
    if not set -q __fish_git_prompt_color_dirtystate
        set -g __fish_git_prompt_char_dirtystate "~"
        set -g __fish_git_prompt_color_dirtystate yellow
    end


    # Untracked Files
    if not set -q __fish_git_prompt_color_untrackedfiles
        set -g __fish_git_prompt_char_untrackedfiles "+"
        set -g __fish_git_prompt_color_untrackedfiles blue
    end


    # Invalid State
    if not set -q __fish_git_prompt_color_invalidstate
        set -g __fish_git_prompt_char_invalidstate "✘"
        set -g __fish_git_prompt_color_invalidstate red
    end


    # printf '%s ' (fish_vcs_prompt | sed 's/\([1-9]\+\)/\1 /g')
    echo -n (fish_vcs_prompt)
 
    echo -n \n(set_color 808080)"╰─"
    echo -n (set_color red)'❯'(set_color yellow)'❯'(set_color green)'❯ '
    set_color normal
end
