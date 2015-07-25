# encoding: utf-8

# Module for creating the entityfile
module Entityfile
  def self.get_information
    puts 'What is the jobtitle of your application?'
    jobtitle = STDIN.gets.chomp
    puts 'What is the company\'s name?'
    company = STDIN.gets.chomp
    puts "What is the street and house number of #{company}?"
    street = STDIN.gets.chomp
    puts "Now i need the ZIP-Code (in german PLZ) and the city where #{company} is."
    city = STDIN.gets.chomp
    puts 'If you have a contact so give me the name of him/her.'
    contact = STDIN.gets.chomp
    create_file(jobtitle, company, street, city, contact)
  end

  def self.create_file(jobtitle, company, street, city, contact)
    FileUtils.touch 'entity.tex'
    File.write 'entity.tex', <<EOF
\\def\\jobtitle{#{jobtitle}}
\\def\\company{#{company}}
\\def\\contact{#{contact}}
\\def\\street{#{street}}
\\def\\city{#{city}}
EOF
  end
end