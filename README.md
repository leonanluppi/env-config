### Main Apps

- [Bitwarden](https://bitwarden.com/)
- [Discord](https://discord.com/)
- [Docker](https://www.docker.com/)
- [Figma](https://www.figma.com/)
- [iTerm2](https://iterm2.com/)
- [Mongo Compass](https://www.mongodb.com/products/compass)
- [Notion](https://www.notion.so/)
- [Visual Studio Code](https://code.visualstudio.com/)
- [XCode (If you use MAC)](https://apps.apple.com/gb/app/xcode/id497799835?mt=12)
- [Rectangle (If you use MAC)](https://rectangleapp.com/)
- [Brew (If you use MAC)](https://brew.sh/)
- [Google Chrome](https://www.google.com/intl/en_uk/chrome/)

### Font install:

Just download and install on pc.
- [FiraCode](https://github.com/tonsky/FiraCode/)

### ZSH Configuration

##### 1 - Install zsh

Just run:
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/leonanluppi/env-config/main/zsh-install.sh)"
```

##### 2 - Install zsh plugin
Then install plugin, running: 
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/leonanluppi/env-config/main/tools-zsh-install.sh)" -y
```

##### 3- Install theme
Clone repo
```
git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"
```
 
 Create a symbolic link:
 ```
 sudo ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"
 ```
 On terminal open ~/.zshrc:  ``` code ~/.zshrc  ``` find and edit ```ZSH_THEME``` var to:
 ```
 ZSH_THEME="spaceship"
 ```
 
 ##### 4 - Reload terminal

Replace my .zshrc and reload:

```
source ~/.zshrc
```

### iTerm2 Theme

Download [iTerm2 Theme](https://raw.githubusercontent.com/leonanluppi/env-config/main/iterm2-pattern.itermcolors)

Then set a new color preset:
```
iTerm2 > Preferences > Profiles > Colors Tab
Open the Color Presets... drop-down in the bottom right corner
Select Import... from the list
Select the Dracula.itermcolors file
Select the Dracula from Color Presets...
```

### VSCode Settings

Sync gist to VSCode:
```
https://gist.github.com/leonanluppi/814b29feb7a35628610b9bb359cec1bd
```
