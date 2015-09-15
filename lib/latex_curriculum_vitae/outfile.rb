#!/usr/bin/env ruby
# encoding: utf-8
# @author Sascha Manns
# @abstract CV Module for latex_curriculum_vitae
#
# Copyright (C) 2015  Sascha Manns <samannsml@directbox.com>
# License: MIT

# Dependencies
require 'csv'

# Module for creating and appending the outfile
module CVOutfile
  # rubocop:disable Metrics/LineLength
  # Method to adding the data into the csv file
  # @param [String] jobtitle Title of the target job
  # @param [String] company Companys name
  # @param [String] contact Name of the contact
  # @param [String] emailaddress Emailadress of the contact
  # @param [String] csvout Path to the outfile
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