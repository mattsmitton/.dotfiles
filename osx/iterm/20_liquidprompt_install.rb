unless File.directory?("#{ENV['HOME']}/.config/liquidprompt")
  `git clone https://github.com/nojhan/liquidprompt.git ~/.config/liquidprompt`
end
