# encoding: utf-8
require 'fileutils'

# Module for creating the entityfile
module Entityfile

  def self.get_information(entitytex)
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

    street = ''
    city = ''
      puts 'before create'
    create_file(jobtitle, company, street, city, contact, entitytex)
      puts 'after create'
    [contact, emailaddress, jobtitle, contact_sex, company, proactive]
  end

  def self.create_file(jobtitle, company, street, city, contact, entitytex)
    FileUtils.rm(entitytex) if File.exist?(entitytex)
    FileUtils.touch(entitytex)
    File.write "#{entitytex}", <<EOF
\\def\\jobtitle{#{jobtitle}}
\\def\\company{#{company}}
\\def\\contact{#{contact}}
\\def\\street{#{street}}
\\def\\city{#{city}}
EOF
  end
end