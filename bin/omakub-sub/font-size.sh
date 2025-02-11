choice=$(gum choose {7..14} "<< Back" --height 11 --header "Choose your terminal font size")

if [[ $choice =~ ^[0-9]+$ ]]; then
	sed -i "s/^size = .*$/size = $choice/g" ~/.config/alacritty/font-size.toml
	sed -i "s/^font-size = .*$/font-size = $choice/g" ~/.config/ghostty/font-size
	source $OMAKUB_PATH/bin/omakub-sub/font-size.sh
else
	source $OMAKUB_PATH/bin/omakub-sub/font.sh
fi
