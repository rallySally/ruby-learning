$:<<'about'  # add to load path
files = Dir.glob('about/*.rb')
files.each{|file| require file.gsub(/^about\/|.rb$/,'')}
