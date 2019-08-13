#!/bin/bash

### Loop through all directories including hidden directories
for dir in * .[^.]*; do
    ### Make sure it's a directory ###
    if [ -d "$dir" ]; then

        if [ $dir = ".git" ]; then
            ### Don't want to copy git dir ###
            continue
        fi

        if [ $dir = ".oh-my-zsh" ]; then
            ### Custom oh-my-zsh theme ###
            configs=$(ls -A $dir)
            for f in $configs; do
                echo "Linking ${f}..."
                if [ -d "~/.oh-my.zsh" ]; then
                    ln -s ${PWD}/${dir}/${f} ~/${dir}/themes/
                fi
            done

        elif [ $dir = "home" ]; then
            ### Any home directory files ###
            configs=$(ls -A $dir)
            for f in $configs; do
                echo "Linking ${f}..."
                ln -s ${PWD}/${dir}/${f} ~/
            done

        else
            ### .config folder ###
            configs=$(ls -A $dir)
            for f in $configs; do
                echo "Linking ${f}..."
                ln -s ${PWD}/${dir}/${f} ~/${dir}/
            done
        fi

    fi
done

