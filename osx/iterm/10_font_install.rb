# Fonts must be a normal file and not symlinked
# Otherwise font book won't auto-install it
unless File.file?("#{ENV['HOME']}/Library/Fonts/ligaturized-inconsolata-dz-powerline.otf")
  puts 'Installing Ligaturized Inconsolata for Powerline'
  FileUtils.cp("#{ROOT}/osx/iterm/ligaturized-inconsolata-dz-powerline.otf", "#{ENV['HOME']}/Library/Fonts/ligaturized-inconsolata-dz-powerline.otf")
end
