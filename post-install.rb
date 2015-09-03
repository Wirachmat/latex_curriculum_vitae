# post-install.rb
require 'fileutils'

prefix = "#{Dir.home}/.rvm/rubies/default"
datadir = "#{prefix}/share"
desktopfile = "#{Dir.home}/.local/applications/latex_curriculum_vitae.desktop"

FileUtils.chown_R '1000', '1000', "#{datadir}/latex_curriculum_vitae"

FileUtils.touch(desktopfile)
File.write "#{desktopfile}", <<EOF
[Desktop Entry]
Version=1.0
Type=Application
Name=Job-Application Creator
Exec=latexcv.rb
Icon="#{datadir}/latex_curriculum_vitae/Pictures/arbeitsagentur.png"
EOF
