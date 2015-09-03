# pre-install.rb

if File.exist?('/usr/bin/pdflatex')
  puts 'found pdflatex...'
else
  puts 'Please install pdflatex'
end

if File.exist?('/usr/bin/xelatex')
  puts 'Found xelatex...'
else
  puts 'Please install xelatex'
end