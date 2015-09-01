# encoding: utf-8
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))

require 'rake'
require 'fileutils'
require File.expand_path(File.join(File.dirname(__FILE__), 'lib/entityfile'))
require File.expand_path(File.join(File.dirname(__FILE__), 'lib/cv'))
require File.expand_path(File.join(File.dirname(__FILE__), 'lib/cover'))
require File.expand_path(File.join(File.dirname(__FILE__), 'lib/email'))
require File.expand_path(File.join(File.dirname(__FILE__), 'lib/outfile'))

desc 'Prepares Entityfile'
task :run do
  FileUtils.rm('entity.tex') if File.exist?('entity.tex')
  contact, emailaddress, jobtitle, contact_sex, company, proactive = Entityfile.get_information
  FileUtils.cd('Cover') do
   Cover.create_cover
  end
  FileUtils.cd('Resume') do
   CV.create_cv
  end
  CVEmail.create_email(contact, emailaddress, jobtitle, contact_sex, proactive)
  CVOutfile.add_to_outfile(jobtitle, company, contact, emailaddress)
end

task :default => [:run] do
  puts 'Using the default task'
end
