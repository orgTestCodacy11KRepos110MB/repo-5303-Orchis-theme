#! /usr/bin/env bash

for theme in '' '-Purple' '-Pink' '-Red' '-Orange' '-Yellow' '-Green' '-Teal' '-Grey'; do
    case "$theme" in
      '')
        theme_color_dark='#1A73E8'
        theme_color_light='#3281EA'
        ;;
      -Purple)
        theme_color_dark='#AB47BC'
        theme_color_light='#BA68C8'
        ;;
      -Pink)
        theme_color_dark='#EC407A'
        theme_color_light='#F06292'
        ;;
      -Red)
        theme_color_dark='#E53935'
        theme_color_light='#F44336'
        ;;
      -Orange)
        theme_color_dark='#F57C00'
        theme_color_light='#FB8C00'
        ;;
      -Yellow)
        theme_color_dark='#FBC02D'
        theme_color_light='#FFD600'
        ;;
      -Green)
        theme_color_dark='#4CAF50'
        theme_color_light='#66BB6A'
        ;;
      -Teal)
        theme_color_dark='#009688'
        theme_color_light='#4DB6AC'
        ;;
      -Grey)
        theme_color_dark='#616161'
        theme_color_light='#757575'
        ;;
    esac

    if [[ "$theme" != '' ]]; then
      cp -rf "assets.svg" "assets${theme}.svg"
      sed -i "s/#1A73E8/${theme_color_dark}/g" "assets${theme}.svg"
      sed -i "s/#3281EA/${theme_color_light}/g" "assets${theme}.svg"
    fi
done

echo -e "DONE!"
