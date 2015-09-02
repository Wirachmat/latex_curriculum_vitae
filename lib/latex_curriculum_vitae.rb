# encoding: utf-8
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), 'lib'))

require 'fileutils'
require File.expand_path(File.join(File.dirname(__FILE__), 'latex_curriculum_vitae/entityfile'))
require File.expand_path(File.join(File.dirname(__FILE__), 'latex_curriculum_vitae/cv'))
require File.expand_path(File.join(File.dirname(__FILE__), 'latex_curriculum_vitae/cover'))
require File.expand_path(File.join(File.dirname(__FILE__), 'latex_curriculum_vitae/email'))
require File.expand_path(File.join(File.dirname(__FILE__), 'latex_curriculum_vitae/outfile'))

class LatexCurriculumVitae
  FileUtils.cd('..') do
    # Remove old entity.tex file
    FileUtils.rm('entity.tex') if File.exist?('entity.tex')

    # Get the needed Information for creating the application
    contact, emailaddress, jobtitle, contact_sex, company, proactive = Entityfile.get_information

    # Create the cover
    FileUtils.cd('Cover') do
      Cover.create_cover
    end

    # Create the Curriculum Vitae
    FileUtils.cd('Resume') do
      CV.create_cv
    end

    # Create the email
    CVEmail.create_email(contact, emailaddress, jobtitle, contact_sex, proactive)

    # Add entry to Outfile
    CVOutfile.add_to_outfile(jobtitle, company, contact, emailaddress)

    # Start evince to check the output file
    system('evince Bewerbungsunterlagen_Manns.pdf')
  end
end