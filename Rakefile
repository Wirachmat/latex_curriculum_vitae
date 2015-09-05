# encoding: utf-8
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), 'lib'))
require File.expand_path(File.join(File.dirname(__FILE__), 'lib', 'latex_curriculum_vitae/version.rb'))
require 'bundler/gem_tasks'
require 'rubygems'

# Yard Task
require 'yard'
desc 'Run yarddoc for the source'
# rubocop:disable Metrics/LineLength
YARD::Rake::YardocTask.new do |t|
  t.files = %w('lib/**/*.rb', '-', 'CHANGELOG.md', 'CODE_OF_CONDUCT.md', 'CONTRIBUTING.md', 'MANIFEST', 'LICENSE', 'README.md')
end

# Rubocop
require 'rubocop/rake_task'
desc 'Run RuboCop on the lib directory'
RuboCop::RakeTask.new(:rubocop) do |task|
  task.patterns = ['lib/**/*.rb']
  # only show the files with failures
  task.formatters = ['files']
  # don't abort rake on failure
  task.fail_on_error = false
end

require 'bundler/audit/cli'
namespace :bundle_audit do
  desc 'Update bundle-audit database'
  task :update do
    Bundler::Audit::CLI.new.update
  end

  desc 'Check gems for vulns using bundle-audit'
  task :check do
    Bundler::Audit::CLI.new.check
  end

  desc 'Update vulns database and check gems using bundle-audit'
  task :run do
    Rake::Task['bundle_audit:update'].invoke
    Rake::Task['bundle_audit:check'].invoke
  end
end

task :bundle_audit do
  Rake::Task['bundle_audit:run'].invoke
end

require 'fileutils'
desc 'Prepares for release'
task :make_release do
  version = LatexCurriculumVitae::Version::STRING
  home = Dir.home
  target = "#{home}/RubymineProjects/saigkill.github.com/_posts"
  time = Time.new
  date = time.strftime('%Y-%m-%d')

  system('git add .idea/*')
  system('git commit -m "Updated workspace"')
  puts 'done'
  system('rake release')

  FileUtils.cd(target) do
    FileUtils.touch "#{date}-latex_curriculum_vitae-#{version}-released-en.md"
    File.write "#{date}-latex_curriculum_vitae-#{version}-released-en.md", <<EOF
---
layout: post
title: "latex_curriculum_vitae #{version} - A program for creating an job application"
description: "It supports creating a application by rendering with LaTEX."
category: "programming"
tags: [ruby, opensource, latex_curriculum_vitae, en-US]
---
{% include JB/setup %}

# Introduction
latex_curriculum_vitae is a Ruby based generator for LaTEX job applications:

* it asks for the information like jobtitle, contact, company and so far,
* it generates the resume with a cover,
* it generates an email with the contacts emailaddress and a predefined text and
* it saves the informations in a CSV file.

# Installation
If you give it a try just do:

     gem install latex_curriculum_vitae
     cd /path/to/gem (In case of using RVM ~/.rvm/gems/ruby-2.2.1/gems/latex_curriculum_vitae
    ./setup.rb

# Dependencies

* pdflatex
* xelatex

# Using the Gem

To use the gem type in the console

     latexcv.rb

or use the launcher.

# Download last deployed Linux packages
## deb
[![Download](https://api.bintray.com/packages/saigkill/deb/MannsShared/images/download.svg) ](https://bintray.com/saigkill/deb/MannsShared/_latestVersion)
##rpm
[![Download](https://api.bintray.com/packages/saigkill/rpm/MannsShared/images/download.svg) ](https://bintray.com/saigkill/rpm/MannsShared/_latestVersion)

# All Downloads for MannsShared:
[![downloads-all](https://img.shields.io/gem/dt/MannsShared.svg)](https://rubygems.org/gems/MannsShared)

# References
  * Projects home: [https://github.com/saigkill/MannsShared](https://github.com/saigkill/MannsShared)
  * Developer documentation: [http://www.rubydoc.info/gems/MannsShared](http://www.rubydoc.info/gems/MannsShared)
  * Bug reports: [http://saigkill-bugs.myjetbrains.com/youtrack/issues](http://saigkill-bugs.myjetbrains.com/youtrack/issues)

# What has be done in this version #{version}?
  * Basic method integration

# Donations
[![MannsShared](https://pledgie.com/campaigns/29554.png?skin_name=chrome)](https://pledgie.com/campaigns/29554)
[![wishlist](http://tsv-neuss.de/cms/upload/News-Bilder/amazon1.png)](http://www.amazon.de/registry/wishlist/D75HOEQ00BDD)
EOF
  end
  FileUtils.cd(target) do
    FileUtils.touch "#{date}-MannsShared-#{version}-released-de.md"
    File.write "#{date}-MannsShared-#{version}-released-de.md", <<EOF
---
layout: post
title: "MannsShared #{version} - Eine Library für Standardaufgaben"
description: "Eine Library für Standardaufgaben"
category: "programming"
tags: [ruby, opensource, libraries, de-DE]
---
{% include JB/setup %}

# Introduction
MannsShared ist eine Ruby Bibliothek für Standardaufgaben wie:

* suchen und ersetzen eines Inhaltes einer Datei,
* checken ob ein Zielverzeichnis bereits existiert,
* checken ob ein Konfigurationsfile verfügbar ist und
* entfernen einer Node eines XML-Files.

# Installation
Zur installation genügt ein:

     gem install MannsShared

# Abhängigkeiten

* dir
* nokogiri

# Benutzung des Gem
Fügen Sie einfach folgendes Ihrem Sourcecode hinzu:

     requires 'MannsShared'

Jetzt können Sie auf die Methoden zugreifen. Lesen Sie hierzu die Dokumentation.

# Herunterladen der zuletzt veröffentlichten Linux packages
## deb
[![Download](https://api.bintray.com/packages/saigkill/deb/MannsShared/images/download.svg) ](https://bintray.com/saigkill/deb/MannsShared/_latestVersion)
##rpm
[![Download](https://api.bintray.com/packages/saigkill/rpm/MannsShared/images/download.svg) ](https://bintray.com/saigkill/rpm/MannsShared/_latestVersion)

# Gesamtdownloads für MannsShared:
[![downloads-all](https://img.shields.io/gem/dt/MannsShared.svg)](https://rubygems.org/gems/MannsShared)

# Referenzen
  * Projekthomepage: [https://github.com/saigkill/MannsShared](https://github.com/saigkill/MannsShared)
  * Entwicklerdokumentation: [http://www.rubydoc.info/gems/MannsShared](http://www.rubydoc.info/gems/MannsShared)
  * Bugreports: [http://saigkill-bugs.myjetbrains.com/youtrack/issues](http://saigkill-bugs.myjetbrains.com/youtrack/issues)

# Was ist neu in der version #{version}?
  * Basic method integration

# Donations
[![MannsShared](https://pledgie.com/campaigns/29554.png?skin_name=chrome)](https://pledgie.com/campaigns/29554)
[![wishlist](http://tsv-neuss.de/cms/upload/News-Bilder/amazon1.png)](http://www.amazon.de/registry/wishlist/D75HOEQ00BDD)
EOF
  end
  puts 'Prepared your Blogpost. Please add the changes of this release'
end

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

