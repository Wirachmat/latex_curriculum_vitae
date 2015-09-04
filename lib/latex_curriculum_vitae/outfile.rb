#!/usr/bin/env ruby
# encoding: utf-8
# @author Sascha Manns
# @abstract CV Module for latex_curriculum_vitae
#
# Copyright (C) 2015  Sascha Manns <samannsml@directbox.com>
# License: GPL-3

# Dependencies
require 'csv'

# Module for creating and appending the outfile
module CVOutfile
  # Method to adding the data into the csv file
  def self.add_to_outfile(jobtitle, company, contact, emailaddress, csvout)
    home = Dir.home
    time = Time.new
    date = time.strftime('%Y-%m-%d')
    contact.gsub!('%20', ' ')
    jobtitle.gsub!('%20', ' ')
    jobtitle.gsub!('%26', '&')
    if File.exist?(csvout)
      puts 'do nothing'
    else
      FileUtils.touch(csvout)
      File.write "#{csvout}", <<EOF
date,company,job,contact,email,status
EOF
    end
    CSV.open("#{csvout}", 'a+') do |csv|
      #datum,firma,stelle,kontakt,email,status
      csv << ["#{date}","#{company}","#{jobtitle}","#{contact}","#{emailaddress}",'Open']
    end
  end
end