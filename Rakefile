# encoding: utf-8
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))

require 'rake'
require 'fileutils'
require File.expand_path(File.join(File.dirname(__FILE__), 'lib/entityfile'))

desc 'Prepares Entityfile'
task :entityfile do
  FileUtils.rm('entity.tex') if File.exist?('entity.tex')
  Entityfile.get_information
end

desc 'Compiles Cover'
task :cover do
  FileUtils.cd('Cover') do
    system('pdflatex Cover.tex')
  end
end

desc 'Compiles CV'
task :cv do
  FileUtils.cd('Resume') do
    system('xelatex cv_10.tex')
    puts 'First run of xelatex passed'
    system('biber cv_10.bcf')
    puts 'Run of biber passed'
    system('xelatex cv_10.tex')
    puts 'Second run of xelatex passed'
    puts 'Shrinking PDF'
    system('gs -o Bewerbungsunterlagen_Manns.pdf -sDEVICE=pdfwrite -dPDFSETTINGS=/prepress cv_10.pdf')
    puts 'All done'
    system('cp Bewerbungsunterlagen_Manns.pdf ..')
  end
end

task :default => [:entityfile, :cover, :cv] do
  puts 'Using the default task'
end
