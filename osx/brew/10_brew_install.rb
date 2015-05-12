unless which("brew")
  puts "Installing homebrew"
  system('ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"')
else
  `brew update`
end

# Set permissions on the brew folder
puts 'Setting you as owner on /usr/local'
`sudo chown -R "$USER":admin /usr/local`

`brew tap caskroom/fonts`              # fonts
`brew tap thoughtbot/formulae`         # pick
`brew tap nviennot/tmate`              # for tmate
`brew tap homebrew/versions`           # not sure, but here it is! 
`brew install caskroom/cask/brew-cask` # mac os x gui apps

INSTALLED_CASK_RECIPES =  `brew cask list`
INSTALLED_RECIPES =  `brew list`
INSTALLED_TAPS = `brew taps`


