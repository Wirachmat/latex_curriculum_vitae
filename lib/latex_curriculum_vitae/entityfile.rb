# encoding: utf-8
require 'fileutils'

# Module for creating the entityfile
module Entityfile
  def self.get_information
    if File.exist?('/usr/bin/yad')
      puts 'Using yad'
      resume = `yad --title="Create application" --center --on-top --form \
--item-separator=, --separator="|" \
--field="What is the jobtitle of your application? Escape amp with backslash:TEXT" \
--field="Is it a proactive application?:CBE" \
--field="What is the companies name? Escape amp with backslash:TEXT" \
--field="Is your contact male or female? leave blank if unknown contact:CBE" \
--field="If you have a contact so give me the name of him/her. leave blank if unknown contact:TEXT" \
--field="Tell me the email address for sending the application:TEXT" \
--button="Go!" "" "yes,no" "" "male,female,unknown"`
      jobtitle, proactive, company, contact_sex, contact, emailaddress = resume.chomp.split('|')
      [jobtitle, proactive, company, contact_sex, contact, emailaddress].each do |s|
        puts s
      end
#       titlein = `yad --title="Create documentation" --center --on-top --form \
# --item-separator=, --separator="|"  --field="Environment:CBE" \
# --field="Type:CBE" --field="Optional:CBE" --field="Enter a title name \
# (with underscores instead of blanks and without umlauts):TEXT" \
# --field="Please file bugs or feature requests \
# on http://saigkill.ddns.net:8112/dashboard:LBL" --button="Go!" "Work,Private" \
# "Article,Book" "Normal,Report,Homework"`
#       # @note Format: Work/Private Article/Book title!Normal Report Homework
#       # @note Cleanup the array
#       environment, type, opt, titlefix = titlein.chomp.split('|')
#
#       # @note replace blanks with underscores
#       title = titlefix.gsub(/ /, '_')
#
#       [environment, type, opt, title]
    else
      puts 'yad not found using shell'
      puts 'What is the jobtitle of your application? Escape \&'
      jobtitle = STDIN.gets.chomp
      puts 'Is it a proactive application?'
      proactive = STDIN.gets.chomp
      puts 'What is the company\'s name? Escape \&'
      company = STDIN.gets.chomp
      # puts "What is the street and house number of #{company}?"
      # street = STDIN.gets.chomp
      # puts "Now i need the ZIP-Code (in german PLZ) and the city where #{company} is."
      # city = STDIN.gets.chomp
      puts 'Is your contact male or female? (leave blank if unknown contact)'
      contact_sex = STDIN.gets.chomp
      puts 'If you have a contact so give me the name of him/her. (leave blank if unknown contact)'
      contact = STDIN.gets.chomp
      puts 'Tell me the email address for sending the application'
      emailaddress = STDIN.gets.chomp
    end

    street = ''
    city = ''
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