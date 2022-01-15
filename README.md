# Dotfiles

Hi there, thanks for checking out my dotfiles.

Here is a list of software that I'm using here:

- Sway
- Swaylock-effects
- Waybar
- Mako
- Rofi
- Zsh
- Alacritty
- Vim
- Cava

I use Void Linux with Wayland.
You'll find some handy optimisations and configuration elements to polish the experience. For example, you'll find `xbps` aliases for very fast and simple package management.

## Why do I use what I use?

### Sway
I used to be a long time `i3-gaps` user, (taking a short break of a few months trying out `bspwm`). Recently, I experienced some serious bugs that i3-gaps had with monitors larger than 1920x1080. I switched to Sway, and found that it was a neater, cleaner experience that seemed to fix many of the awkward or weird behaviours of i3-gaps, and I continued using it. 

### Swaylock-effects
I didn't really use a lock on my previous system, so I tried out swaylock, and it was nice, I heard of the `swaylock-effects` fork that included a few more features, so I cloned and compiled it, and it seemed to work quite well.

### Waybar
This was simply the most popular and most mature (I think?) option for sway. I also managed to get a configuration and style that I liked. I used to be a very strong anti-bar individual, but I tried out waybar and found it useful, especially since I have a higher resolution monitor now.

### Mako
I used `dunst` back on my old configuration. Mako seemed to immitate `dunst`, but it felt a bit more polished? I'm not sure how to describe it. I actually liked the default configuration quite a lot and it went well with my system. I think I just changed a few colours around, and changed the geometry and weird rounded corners.

### Rofi
This is pretty much the default config, I use this because all the alternatives are either way too bloated, or just don't work. Since moving to wayland, it seems my previous configuration doesn't seem to work? None of the configs I've tried work properly, so it must be a weird xwayland thing? I just use the default configuration `arthur`, that doesn't look as awful. I might go back to sorting out a proper configuration / replacement for this. Please let me know if you have a good one.

### Zsh
I have had many pilgrimages from bash to zsh, to fish, back to zsh again, then to nushell, then to bash, then to zsh again. Zsh just seems to be the shell with the most plugins and infrastructure around it. It also is relitavely compatible with whatever I want to run on it, and isn't too heavy, the only reason I moved away from zsh for a time was because of weird performance problems that seemed to fix themselves after a period of time, and so I'm back. You'll find very useful aliases and very opinionated aliases too. If you are a Void Linux user who writes primarily in Rust, hopefully this is a good starting point for your own configuration.

### Alacritty
I used to use Konsole, then Tilix, now I use Alacritty because it is quite fast, lightweight and fits in nicely with a tiling window manager. Also Rust is cool.

### Vim
I use vim because it's the most developed text editor that runs in the terminal out there. I don't use neovim because I find it messy when converting across my config file, and I don't really feel any hatred towards vimscript nor any desire to use lua, so I just use stock vim.

### Cava
I don't know of any alternative, and it works alright, so I just use this.