puts "#{Tty.blue}Installing Brew packages...#{Tty.reset}"

recipes = [
    "Caskroom/cask/osxfuse",      # For mounting filesystems, use this alternate source because of kexts
    "ack",                        # Search inside of files
    "ansible",                    # System configuration/management
    "autoconf",
    "automake",
    "bash",                       # Updated bash
    "boost",
    "boot2docker",
    "brew-cask",
    "cask",
    "cloog-ppl015",
    "cloog018",
    "cmake",                      # Compiler
    "coreutils",
    "csshx",
    "ctags",                      # Tagging for Vim
    "curl",                       # Updated
    "docker",
    "emacs",
    "fortune",
    "fping",
    "freetype",
    "gcc48",
    "gcc49",
    "ghostscript",                # PDF support for imagemagick
    "git",                        # Version control
    "git-flow",                   #
    "glew",
    "glm",
    "gmp4",
    "gnu-sed",
    "gnupg",                      # For securing messages
    "heroku-toolbelt",
    "htop-osx",                   # Activity monitor
    "imagemagick",                # Image manipulation
    "isl011",
    "jpeg",
    "libgpg-error",
    "libiconv",
    "libksba",
    "libmpc08",
    "libpng",
    "libtiff",
    "libtool",
    "libxml2",
    "libxslt",
    "libyaml",
    "lynx",
    "mobile-shell",               # SSH like client for low quality connections aka mosh
    "mpfr2",
    "mtr",
    "ngrok",                      # Port forwarder
    "node",                       # Node.js
    "openssl",                    # Patched OpenSSL for latest security releases
    "ossp-uuid",
    "pcre",
    "pick",                       # Search multiline strings fuzzily
    "pkg-config",
    "postgresql91",
    "ppl011",
    "pwgen",
    "python",                     # Recent python
    "qt",                         # used in headless browser testing
    "readline",
    "reattach-to-user-namespace", # Allows Tmux to interact with the system pasteboard via pbcopy etc
    "redis",
    "sdl",
    "sdl_image",
    "ssh-copy-id",                # Copies ssh keys and puts in authorized on remote host
    "sshfs",                      # Mount a filesystem over ssh using osxfuse
    "swig",
    "tcping",
    "terminal-notifier",          # Send notifications to notification center
    "the_silver_searcher",        # Fast file searching
    "tig",                        # Beautiful git visualization
    "tmate",                      # Easy remote pair sessions
    "tmux",                       # Terminal multiplexer, great for pairing
    "tmux-cssh",                  # SSH into multiple computers
    "tree",                       # Display filesystem as tree in terminal
    "unrar",                      # Unrar, that's all
    "vim",                        # Best text editor ever
    "watch",
    "webp",
    "wget"                       # Curl alternative, some things use it
]

recipes.each do |r|
  unless INSTALLED_RECIPES.include?(r)
    puts "    installing #{r}"
    `brew install #{r}`
  else
    puts "    skipping #{r}"
  end
end
