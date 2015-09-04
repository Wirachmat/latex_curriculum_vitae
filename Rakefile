# encoding: utf-8
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), 'lib'))
require 'bundler/gem_tasks'
require 'rubygems'

task :default do

end

require 'etc'
require 'fileutils'
desc 'Create Desktop files'
task :create_desktop do
  home = Dir.home
  latexcvdesktop = "#{home}/.local/share/applications/latexcv.desktop"
  latexcvico = File.expand_path(File.join(File.dirname(__FILE__), 'bin/', 'arbeitsagentur.png'))
  latexcvbin = File.expand_path(File.join(File.dirname(__FILE__), 'bin/', 'latexcv.rb'))
  FileUtils.rm(latexcvdesktop) if File.exists?(latexcvdesktop)
  puts 'Creating Desktop file for LatexCurriculumVitae'
  FileUtils.touch "#{latexcvdesktop}"
  File.write "#{latexcvdesktop}", <<EOF
[Desktop Entry]
Version=1.0
Type=Application
Name=LatexCurriculumVitae
Exec=#{latexcvbin}
Icon=#{latexcvico}
EOF
end

