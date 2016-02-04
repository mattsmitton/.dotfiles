unless which("brew")
  puts "Installing homebrew"
  system('ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"')
else
  `brew update`
end

# Set permissions on the brew folder
puts 'Setting you as owner on /usr/local'
`sudo chown -R "$USER":admin /usr/local`

# this will handle the rest of our recipes/taps
puts 'Installing taps and recipes from ~/.Brewfile'
`brew tap Homebrew/bundle`
`brew bundle --global -v`

