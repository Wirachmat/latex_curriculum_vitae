# encoding: utf-8

# Module for creating the entityfile
module Entityfile
  def self.get_information
    puts 'What is the jobtitle of your application? Escape \&'
    jobtitle = STDIN.gets.chomp
    puts 'Is it a proactive application?'
    proactive = STDIN.gets.chomp
    puts 'What is the company\'s name? Escape \&'
    company = STDIN.gets.chomp
    puts "What is the street and house number of #{company}?"
    street = STDIN.gets.chomp
    puts "Now i need the ZIP-Code (in german PLZ) and the city where #{company} is."
    city = STDIN.gets.chomp
    puts 'Is your contact male or female? (leave blank if unknown contact)'
    contact_sex = STDIN.gets.chomp
    puts 'If you have a contact so give me the name of him/her. (leave blank if unknown contact)'
    contact = STDIN.gets.chomp
    puts 'Tell me the email address for sending the application'
    emailaddress = STDIN.gets.chomp
    create_file(jobtitle, company, street, city, contact)
    [contact, emailaddress, jobtitle, contact_sex, company, proactive]
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