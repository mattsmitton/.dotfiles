puts "#{Tty.blue}Installing fonts...#{Tty.reset}"

recipes = [
  'font-inconsolata-dz-for-powerline',  # Used in terminal
  'font-inconsolata-dz',
  'font-inconsolata'
]

recipes.each do |r|
  unless INSTALLED_CASK_RECIPES.include?(r)
    puts "    installing #{r}"
    `brew cask install #{r}`
  else
    puts "    skipping #{r}"
  end
end

