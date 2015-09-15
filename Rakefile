# -*- ruby -*-

require 'rubygems'
require 'hoe'

# Hoe.plugin :compiler
# Hoe.plugin :cucumberfeatures
# Hoe.plugin :inline
# Hoe.plugin :manifest
# Hoe.plugin :minitest
# Hoe.plugin :newgem
# Hoe.plugin :racc
# Hoe.plugin :rcov

Hoe.plugin :rdoc
Hoe.plugin :rubygems
Hoe.plugin :bundler
Hoe.plugin :version
Hoe.plugin :seattlerb
Hoe.plugin :git
Hoe.plugin :deveiate
Hoe.plugin :doofus
Hoe.plugin :email
Hoe.plugin :website
Hoe.plugin :gemspec
Hoe.plugin :reek
Hoe.plugin :roodi
Hoe.plugin :manualgen

Hoe.spec 'latex_curriculum_vitae' do
  developer('Sascha Manns', 'samannsml@directbox.com')
  license 'MIT' # this should match the license in the README
  require_ruby_version '>= 2.2.0'

  self.history_file = 'History.rdoc'
  self.readme_file = 'README.rdoc'
  self.extra_rdoc_files = FileList['*.rdoc'].to_a
  self.post_install_message = '*** Run rake setup to finish the installation *** Please file bugreports and feature requests on: http://saigkill-bugs.myjetbrains.com/youtrack/issues'

  dependency 'setup', '~> 5.2'
  dependency 'notifier', '~> 0.5'

  extra_dev_deps << ['hoe-doofus', '~> 1.0']
  extra_dev_deps << ['hoe-bundler', '~> 1.2']
  extra_dev_deps << ['hoe-gemspec', '~> 1.0']
  extra_dev_deps << ['hoe-git', '~> 1.6']
  extra_dev_deps << ['hoe-rubygems', '~> 1.0']
  extra_dev_deps << ['hoe-seattlerb', '~> 1.3']
  extra_dev_deps << ['hoe-version', '~> 1.2']
  extra_dev_deps << ['hoe-deveiate', '~> 0.7']
  extra_dev_deps << ['hoe-manualgen', '~> 0.3']
  extra_dev_deps << ['hoe-reek', '~> 1.0']
  extra_dev_deps << ['hoe-roodi', '~> 1.0']
  extra_dev_deps << ['ZenTest', '~> 4.11']
  extra_dev_deps << ['rake', '~> 10.0']
  extra_dev_deps << ['simplecov', '~> 0.7']
  extra_dev_deps << ['coveralls', '~> 0.8']
  extra_dev_deps << ['gem-release', '~> 0.7']
  extra_dev_deps << ['indexer', '~> 0.3']
  extra_dev_deps << ['reek', '~> 3.3', '>= 3.3.1']
  extra_dev_deps << ['roodi', '~> 5.0']
  extra_dev_deps << ['rubocop', '~> 0.34', '>= 0.34.1']
end

# require 'etc'
# require 'fileutils'
# desc 'Create Desktop files'
# task :create_desktop do
#   prefix = "#{Dir.home}/.rvm/rubies/default"
#   datadir = "#{prefix}/share"
#   desktopfile = "#{Dir.home}/.local/share/applications/latex_curriculum_vitae.desktop"
#   FileUtils.touch(desktopfile)
#   File.write "#{desktopfile}", <<EOF
# [Desktop Entry]
# Version=1.0
# Type=Application
# Name=Job-Application Creator
# Exec=latexcv.rb
# Icon="#{datadir}/latex_curriculum_vitae/Pictures/arbeitsagentur.png"
# EOF
# end
#
# desc 'Setup'
# task :setup do
#   system('setup.rb uninstall --force')
#   system('setup.rb config --sysconfdir=$HOME/.latex_curriculum_vitae')
#   system('setup.rb install')
# end
#
# desc 'Run release & deployment'
# task :default => [:setup, :create_desktop] do
#   puts 'Finished Setup'
# end

# require 'yaml'
# require 'fileutils'
# desc 'Prepares for release'
# task :make_release do
#   version = ENV['VERSION']
#   home = Dir.home
#   target = "#{home}/RubymineProjects/saigkill.github.com/_posts"
#   time = Time.new
#   date = time.strftime('%Y-%m-%d')
#   config = YAML.load_file('Index.yml')
#   oldversion = config[0]['version']
#
#   system('rake doofus') #
#   puts 'Checking for mixed indentation'
#   Rake::Task["check_for_mixed_indentation"].invoke
#   puts 'Checking for trailing whitespace'
#   Rake::Task["check_for_trailing_whitespace"].invoke
#   puts 'Checking whitespace'
#   Rake::Task["check_whitespace"]
#   puts ' General quality check'
#   Rake::Task["quality_check"]
#   puts 'Recreating Gemfile'
#   Rake::Task["bundler:gemfile"]
#   puts 'Updating Gemfile.lock'
#   system('bundle update')
#   puts('Updating index')
#   MannsShared.search_replace(oldversion, version, 'Index.yml')
#   MannsShared.search_replace(oldversion, version, 'VERSION')
#   system('index --using VERSION Index.yml')
#   puts 'Updating Manifest'
#   system('rake git:manifest')
#   system('git add Manifest.txt')
#   puts 'done'
#   puts 'Updating workspace'
#   system('git add .idea/*')
#   system('git commit -m "Updated workspace"')
#   system('git push')
#   puts 'done'
#   puts 'Making release'
#   system("rake release VERSION=#{version}")
#
#   FileUtils.cd(target) do
#     FileUtils.touch "#{date}-latex_curriculum_vitae-#{version}-released-en.md"
#     File.write "#{date}-latex_curriculum_vitae-#{version}-released-en.md", <<EOF
# ---
# layout: post
# title: "latex_curriculum_vitae #{version} - A program for creating an job application"
# description: "It supports creating a application by rendering with LaTEX."
# category: "programming"
# tags: [ruby, opensource, latex_curriculum_vitae, en-US]
# ---
# {% include JB/setup %}
#
# # Introduction
# latex_curriculum_vitae is a Ruby based generator for LaTEX job applications:
#
# * it asks for the information like jobtitle, contact, company and so far,
# * it generates the resume with a cover,
# * it generates an email with the contacts emailaddress and a predefined text and
# * it saves the informations in a CSV file.
#
# # Installation
# If you give it a try just do:
#
#      gem install latex_curriculum_vitae
#      cd /path/to/gem (In case of using RVM ~/.rvm/gems/ruby-2.2.1/gems/latex_curriculum_vitae-#{version})
#      rake
#
# # Dependencies
#
# * pdflatex
# * xelatex
# * yad
#
# # Using the Gem
#
# To use the gem type in the console
#
#      latexcv.rb
#
# or use the launcher.
#
# # All Downloads for latex_curriculum_vitae:
# [![downloads-all](https://img.shields.io/gem/dt/latex_curriculum_vitae.svg)](https://rubygems.org/gems/latex_curriculum_vitae)
#
# # References
#   * Projects home: [https://github.com/saigkill/latex_curriculum_vitae](https://github.com/saigkill/latex_curriculum_vitae)
#   * Developer documentation: [http://www.rubydoc.info/gems/latex_curriculum_vitae](http://www.rubydoc.info/gems/latex_curriculum_vitae)
#   * Bug reports: [http://saigkill-bugs.myjetbrains.com/youtrack/issues](http://saigkill-bugs.myjetbrains.com/youtrack/issues)
#
# # What has be done in this version #{version}?
#   * Basic method integration
#
# # Donations
# [![latex_curriculum_vitae](https://pledgie.com/campaigns/30094.png?skin_name=chrome)](https://pledgie.com/campaigns/30094)
# [![wishlist](http://tsv-neuss.de/cms/upload/News-Bilder/amazon1.png)](http://www.amazon.de/registry/wishlist/D75HOEQ00BDD)
# EOF
#   end
#   FileUtils.cd(target) do
#     FileUtils.touch "#{date}-latex_curriculum_vitae-#{version}-released-de.md"
#     File.write "#{date}-latex_curriculum_vitae-#{version}-released-de.md", <<EOF
# ---
# layout: post
# title: "latex_curriculum_vitae #{version} - Eine Generator für LaTEX Bewerbungen"
# description: "Ein Gem zum generieren von Bewerbungen"
# category: "programming"
# tags: [ruby, opensource, latex_curriculum_vitae, de-DE]
# ---
# {% include JB/setup %}
#
# # Introduction
# latex_curriculum_vitae generiert eine Bewerbung mit den folgenden Schritten:
#
# * es fragt nach Informationen wie Name des Kontaktes, der Firma usw.,
# * es generiert daraus eine Bewerbungsmappe mit Cover, Lebenslauf und Anhängen,
# * es generiert eine Email mit einem erweiterbaren Standardtext,
# * es trägt die Informationen in eine CSV Tabelle ein.
#
# # Installation
# Zur installation genügt ein:
#
#      gem install latex_curriculum_vitae
#      cd /path/to/gem (Falls RVM benutzt wird z.B. ~/.rvm/gems/ruby-2.2.1/gems/latex_curriculum_vitae-#{version})
#      rake
#
# # Abhängigkeiten
#
# * pdflatex
# * xelatex
# * yad
#
# # Benutzung des Gems
# Geben Sie in der Konsole ein:
#
#      latexcv.rb
#
# oder benutzen Sie den Programmstarter.
#
# # Gesamtdownloads für latex_curriculum_vitae:
# [![downloads-all](https://img.shields.io/gem/dt/latex_curriculum_vitae.svg)](https://rubygems.org/gems/latex_curriculum_vitae)
#
# # Referenzen
#   * Projekthomepage: [https://github.com/saigkill/latex_curriculum_vitae](https://github.com/saigkill/latex_curriculum_vitae)
#   * Entwicklerdokumentation: [http://www.rubydoc.info/gems/latex_curriculum_vitae](http://www.rubydoc.info/gems/latex_curriculum_vitae)
#   * Bugreports: [http://saigkill-bugs.myjetbrains.com/youtrack/issues](http://saigkill-bugs.myjetbrains.com/youtrack/issues)
#
# # Was ist neu in der version #{version}?
#   * Basic method integration
#
# # Donations
# [![latex_curriculum_vitae](https://pledgie.com/campaigns/29554.png?skin_name=chrome)](https://pledgie.com/campaigns/29554)
# [![wishlist](http://tsv-neuss.de/cms/upload/News-Bilder/amazon1.png)](http://www.amazon.de/registry/wishlist/D75HOEQ00BDD)
# EOF
#   end
#   puts 'Prepared your Blogpost. Please add the changes of this release'
#   puts 'Now ready for social media posting'
#
#   # Create email to ruby-talk
#   space = '%20'
#   crlf = '%0D%0A'
#   subject = "[ANN] latex_curriculum_vitae #{version} released"
#   subject.gsub!(/ /, "#{space}")
#   body = 'Hello Ruby list,' + "#{crlf}" + "#{crlf}" +
#       "i would like to announce the latex_curriculum_vitae gem in version #{version}." + "#{crlf}" + "#{crlf}" +
#       "What happend in version #{version}?" + "#{crlf}" +
#       '* Its the initial release' + "#{crlf}" +
#       '* Fixed LCV 1-4' + "#{crlf}" + "#{crlf}" +
#       'What is latex_curriculum_vitae?' + "#{crlf}" + "#{crlf}" +
#       'It is a Ruby based generator for LaTEX job applications. It does:' + "#{crlf}" + "#{crlf}" +
#       '* asks for information like jobtitle, contact, company and so far,' + "#{crlf}" +
#       '* generates the resume with a cover' + "#{crlf}" +
#       '* generates an email with the contacts email address and a predefined text and' + "#{crlf}" +
#       '* saves the information in a csv file.' + "#{crlf}" + "#{crlf}" +
#       'Installation:'+ "#{crlf}" + "#{crlf}" +
#       '    gem install latex_curriculum_vitae' + "#{crlf}" +
#       '    cd /path/to/gem \(In case of using RVM anything like ~/.rvm/gems/ruby-2.2.1/gems/latex_curriculum_vitae\)' + "#{crlf}" +
#       '    rake' + "#{crlf}" + "#{crlf}" +
#       'Dependencies:'+ "#{crlf}" + "#{crlf}" +
#       '* pdflatex'+ "#{crlf}" +
#       '* xelatex' + "#{crlf}" +
#       '* yad' + "#{crlf}" + "#{crlf}" +
#       'Using the gem:' + "#{crlf}" + "#{crlf}" +
#       'To use the gem just type in the console:' + "#{crlf}" + "#{crlf}" +
#       '    latexcv.rb' + "#{crlf}" + "#{crlf}" +
#       'or use the launcher.' + "#{crlf}" + "#{crlf}" +
#       'References:' + "#{crlf}" +
#       '* Issue tracker: http://saigkill-bugs.myjetbrains.com/youtrack/issues' + "#{crlf}" +
#       '* Home: https://github.com/saigkill/latex_curriculum_vitae' + "#{crlf}" +
#       'Greetings Sascha'
#   body.gsub!(/ /, "#{space}")
#   system("thunderbird mailto:ruby-talk@ruby-lang.org?subject=#{subject}\\&body=#{body}")
#   system('rm pkg/*')
#   puts 'Run now rake version:bump & rake version:write'
# end
# vim: syntax=ruby
