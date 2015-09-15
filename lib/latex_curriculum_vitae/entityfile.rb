#!/usr/bin/env ruby
# encoding: utf-8
# @author Sascha Manns
# @abstract Entityfile Module for latex_curriculum_vitae
#
# Copyright (C) 2015  Sascha Manns <samannsml@directbox.com>
# License: MIT

# Dependencies
require 'fileutils'

# Module for creating the entityfile
module Entityfile
  # rubocop:disable Metrics/LineLength
  # Method for getting information
  # @param [String] entitytex Path to the entity.tex
  # @return [Array] contact, emailaddress, jobtitle, contact_sex, company, proactive
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
    create_file(jobtitle, company, street, city, contact, entitytex)
    [contact, emailaddress, jobtitle, contact_sex, company, proactive]
  end

  # # Method for getting information through a real gui
  # def self.get_information_gui(entitytex)
  #   # TODO: Extend code for using the gtk GUI
  #   require 'gtk2'
  #   require 'libglade2'
  #   @threads = []
  #
  #   Gtk.init
  #
  #   @glade = GladeXML.new('glade/latexcv.glade')
  #   @glade.widget_names.each do |name|
  #     instance_variable_set("@#{name}".intern, @glade[name])
  #   end
  # end

  # Method for creating the entity.tex
  # @param [String] jobtitle Title of the target job
  # @param [String] company Comanys name
  # @param [String] street Companies street
  # @param [String] city City of the company
  # @param [String] contact Name of the contact
  # @param [String] entitytex Path to the entity.tex
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