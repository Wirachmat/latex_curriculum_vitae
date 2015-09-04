#!/usr/bin/env ruby
# encoding: utf-8
# @author Sascha Manns
# @abstract Main Class for latex_curriculum_vitae
#
# Copyright (C) 2015  Sascha Manns <samannsml@directbox.com>
# License: GPL-3
#$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), 'lib'))

# Dependencies
require 'fileutils'
require File.expand_path(File.join(File.dirname(__FILE__), 'latex_curriculum_vitae/entityfile'))
require File.expand_path(File.join(File.dirname(__FILE__), 'latex_curriculum_vitae/cv'))
require File.expand_path(File.join(File.dirname(__FILE__), 'latex_curriculum_vitae/cover'))
require File.expand_path(File.join(File.dirname(__FILE__), 'latex_curriculum_vitae/email'))
require File.expand_path(File.join(File.dirname(__FILE__), 'latex_curriculum_vitae/outfile'))
require File.expand_path(File.join(File.dirname(__FILE__), 'latex_curriculum_vitae/notifier'))
require File.expand_path(File.join(File.dirname(__FILE__), 'latex_curriculum_vitae/version'))

# Main Class LatexCurriculumVitae
class LatexCurriculumVitae
  # Variables
  home = Dir.home
  prefix = "#{home}/.rvm/rubies/default"
  datadir = "#{prefix}/share"
  version = LatexCurriculumVitae::Version::STRING
  entitytex = "#{home}/.latex_curriculum_vitae/entity.tex"
  personaldata = "#{home}/.latex_curriculum_vitae/personal_data.tex"
  csvout = "#{home}/.latex_curriculum_vitae/job-applications.csv"

  # Get the needed Information for creating the application
  contact, emailaddress, jobtitle, contact_sex, company, proactive = Entityfile.get_information(entitytex)

  # Create the cover
  FileUtils.cd("#{datadir}/latex_curriculum_vitae/Cover") do
    Cover.create_cover
  end

  # Create the Curriculum Vitae
  FileUtils.cd("#{datadir}/latex_curriculum_vitae/Resume") do
    CV.create_cv
  end

  # Create the email
  CVEmail.create_email(contact, emailaddress, jobtitle, contact_sex, proactive)

  # Add entry to Outfile
  CVOutfile.add_to_outfile(jobtitle, company, contact, emailaddress, csvout)

  # Start evince to check the output file
  system("evince #{datadir}/latex_curriculum_vitae/Bewerbungsunterlagen_Manns.pdf")

  # Inform about creation is done
  Notifier.run
end