# encoding: utf-8
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))

require 'rake'
require 'fileutils'
require File.expand_path(File.join(File.dirname(__FILE__), 'lib/entityfile'))
require File.expand_path(File.join(File.dirname(__FILE__), 'lib/cv'))
require File.expand_path(File.join(File.dirname(__FILE__), 'lib/cover'))

desc 'Prepares Entityfile'
task :entityfile do
  FileUtils.rm('entity.tex') if File.exist?('entity.tex')
  Entityfile.get_information
end

desc 'Compiles Cover'
task :cover do
  FileUtils.cd('Cover') do
    Cover.create_cover
  end
end

desc 'Compiles CV'
task :cv do
  FileUtils.cd('Resume') do
    CV.create_cv
  end
end

task :default => [:entityfile, :cover, :cv] do
  puts 'Using the default task'
end
