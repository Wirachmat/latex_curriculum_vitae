# -*- encoding: utf-8 -*-
# stub: latex_curriculum_vitae 0.1.5 ruby lib

Gem::Specification.new do |s|
  s.name = "latex_curriculum_vitae"
  s.version = "0.1.5"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Sascha Manns"]
  s.date = "2015-09-15"
  s.description = "latex_curriculum_vitae is a Rubygem which helps you to create your job application. After the program has started, a little Window comes up\nand asks you for the needed information like the jobtitle, company name, contact name, email address and so on.\nThen it builds a cover and the resume by working with LaTEX. After this is finished, it creates an email with the application attached.\nAlso it puts a standard text into the created email which you can extend to match the needed quality.\nAfter that it creates a new record into a csv file. So you can print out every time the present status."
  s.email = ["samannsml@directbox.com"]
  s.executables = ["latexcv.rb"]
  s.extra_rdoc_files = ["CODE_OF_CONDUCT.md", "CONTRIBUTING.md", "History.rdoc", "History.txt", "Manifest.txt", "README.rdoc", "History.rdoc", "README.rdoc"]
  s.files = [".autotest", ".gemnasium.yml", ".idea/.rakeTasks", ".idea/latex_curriculum_vitae.iml", ".idea/misc.xml", ".idea/modules.xml", ".idea/vcs.xml", ".idea/workspace.xml", ".index", "CODE_OF_CONDUCT.md", "CONTRIBUTING.md", "Gemfile", "Gemfile.lock", "History.rdoc", "History.txt", "Index.yml", "Manifest.txt", "README.rdoc", "Rakefile", "VERSION", "bin/latexcv.rb", "data/latex_curriculum_vitae/Appendix/Bibliography/bibliography1.bib", "data/latex_curriculum_vitae/Appendix/Certificates/Zertifikat_Sascha_Manns1.pdf", "data/latex_curriculum_vitae/Appendix/Certificates/kompetenzpass12013.pdf", "data/latex_curriculum_vitae/Appendix/Certificates/thm-webeng1.pdf", "data/latex_curriculum_vitae/Appendix/Employers_Reference/Arbeitszeugnisse.pdf", "data/latex_curriculum_vitae/Appendix/Employers_Reference/build.bat", "data/latex_curriculum_vitae/Appendix/Employers_Reference/hays.pdf", "data/latex_curriculum_vitae/Appendix/Employers_Reference/haysnew.pdf", "data/latex_curriculum_vitae/Appendix/Employers_Reference/openslx.pdf", "data/latex_curriculum_vitae/Appendix/Employers_Reference/openslx1.pdf", "data/latex_curriculum_vitae/Appendix/Employers_Reference/test.bat", "data/latex_curriculum_vitae/Appendix/Employers_Reference/wtg.pdf", "data/latex_curriculum_vitae/Appendix/First_References/bsaz.pdf", "data/latex_curriculum_vitae/Appendix/First_References/hsaz.pdf", "data/latex_curriculum_vitae/Appendix/First_References/ihk.pdf", "data/latex_curriculum_vitae/Appendix/Study/foo.pdf", "data/latex_curriculum_vitae/Appendix/Study/zwzils.jpg", "data/latex_curriculum_vitae/Appendix/Study/zwzils.pdf", "data/latex_curriculum_vitae/Cover/Cover.tex", "data/latex_curriculum_vitae/Motivational_Letter/Anschreiben.docx", "data/latex_curriculum_vitae/Motivational_Letter/Anschreiben_MC.pdf", "data/latex_curriculum_vitae/Motivational_Letter/bwanschreiben.tex", "data/latex_curriculum_vitae/Pictures/Sascha1p.jpg", "data/latex_curriculum_vitae/Pictures/arbeitsagentur.png", "data/latex_curriculum_vitae/Pictures/background.jpg", "data/latex_curriculum_vitae/Pictures/background.png", "data/latex_curriculum_vitae/Pictures/signatur.png", "data/latex_curriculum_vitae/Resume/cv_10.aux", "data/latex_curriculum_vitae/Resume/cv_10.bbl", "data/latex_curriculum_vitae/Resume/cv_10.bcf", "data/latex_curriculum_vitae/Resume/cv_10.blg", "data/latex_curriculum_vitae/Resume/cv_10.out", "data/latex_curriculum_vitae/Resume/cv_10.pdf", "data/latex_curriculum_vitae/Resume/cv_10.run.xml", "data/latex_curriculum_vitae/Resume/cv_10.tex", "data/latex_curriculum_vitae/Resume/friggeri-cv.cls", "data/latex_curriculum_vitae/Resume/missfont.log", "etc/personal_data.tex", "latex_curriculum_vitae.gemspec", "lib/latex_curriculum_vitae.rb", "lib/latex_curriculum_vitae/cover.rb", "lib/latex_curriculum_vitae/cv.rb", "lib/latex_curriculum_vitae/email.rb", "lib/latex_curriculum_vitae/entityfile.rb", "lib/latex_curriculum_vitae/glade/latexcv.glade~", "lib/latex_curriculum_vitae/notifier.rb", "lib/latex_curriculum_vitae/outfile.rb"]
  s.homepage = "http://saigkill.github.io"
  s.licenses = ["MIT"]
  s.post_install_message = "*** Run rake setup to finish the installation *** Please file bugreports and feature requests on: http://saigkill-bugs.myjetbrains.com/youtrack/issues"
  s.rdoc_options = ["--main", "README.rdoc"]
  s.required_ruby_version = Gem::Requirement.new(">= 2.2.0")
  s.rubygems_version = "2.4.6"
  s.summary = "latex_curriculum_vitae is a Rubygem which helps you to create your job application"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<setup>, ["~> 5.2"])
      s.add_runtime_dependency(%q<notifier>, ["~> 0.5"])
      s.add_development_dependency(%q<rdoc>, ["~> 4.0"])
      s.add_development_dependency(%q<hoe-doofus>, ["~> 1.0"])
      s.add_development_dependency(%q<hoe-bundler>, ["~> 1.2"])
      s.add_development_dependency(%q<hoe-gemspec2>, ["~> 1.1"])
      s.add_development_dependency(%q<hoe-git>, ["~> 1.6"])
      s.add_development_dependency(%q<hoe-rubygems>, ["~> 1.0"])
      s.add_development_dependency(%q<hoe-seattlerb>, ["~> 1.3"])
      s.add_development_dependency(%q<hoe-version>, ["~> 1.2"])
      s.add_development_dependency(%q<hoe-deveiate>, ["~> 0.7"])
      s.add_development_dependency(%q<ZenTest>, ["~> 4.11"])
      s.add_development_dependency(%q<rake>, ["~> 10.0"])
      s.add_development_dependency(%q<simplecov>, ["~> 0.7"])
      s.add_development_dependency(%q<coveralls>, ["~> 0.8"])
      s.add_development_dependency(%q<gem-release>, ["~> 0.7"])
      s.add_development_dependency(%q<indexer>, ["~> 0.3"])
      s.add_development_dependency(%q<hoe>, ["~> 3.14"])
    else
      s.add_dependency(%q<setup>, ["~> 5.2"])
      s.add_dependency(%q<notifier>, ["~> 0.5"])
      s.add_dependency(%q<rdoc>, ["~> 4.0"])
      s.add_dependency(%q<hoe-doofus>, ["~> 1.0"])
      s.add_dependency(%q<hoe-bundler>, ["~> 1.2"])
      s.add_dependency(%q<hoe-gemspec2>, ["~> 1.1"])
      s.add_dependency(%q<hoe-git>, ["~> 1.6"])
      s.add_dependency(%q<hoe-rubygems>, ["~> 1.0"])
      s.add_dependency(%q<hoe-seattlerb>, ["~> 1.3"])
      s.add_dependency(%q<hoe-version>, ["~> 1.2"])
      s.add_dependency(%q<hoe-deveiate>, ["~> 0.7"])
      s.add_dependency(%q<ZenTest>, ["~> 4.11"])
      s.add_dependency(%q<rake>, ["~> 10.0"])
      s.add_dependency(%q<simplecov>, ["~> 0.7"])
      s.add_dependency(%q<coveralls>, ["~> 0.8"])
      s.add_dependency(%q<gem-release>, ["~> 0.7"])
      s.add_dependency(%q<indexer>, ["~> 0.3"])
      s.add_dependency(%q<hoe>, ["~> 3.14"])
    end
  else
    s.add_dependency(%q<setup>, ["~> 5.2"])
    s.add_dependency(%q<notifier>, ["~> 0.5"])
    s.add_dependency(%q<rdoc>, ["~> 4.0"])
    s.add_dependency(%q<hoe-doofus>, ["~> 1.0"])
    s.add_dependency(%q<hoe-bundler>, ["~> 1.2"])
    s.add_dependency(%q<hoe-gemspec2>, ["~> 1.1"])
    s.add_dependency(%q<hoe-git>, ["~> 1.6"])
    s.add_dependency(%q<hoe-rubygems>, ["~> 1.0"])
    s.add_dependency(%q<hoe-seattlerb>, ["~> 1.3"])
    s.add_dependency(%q<hoe-version>, ["~> 1.2"])
    s.add_dependency(%q<hoe-deveiate>, ["~> 0.7"])
    s.add_dependency(%q<ZenTest>, ["~> 4.11"])
    s.add_dependency(%q<rake>, ["~> 10.0"])
    s.add_dependency(%q<simplecov>, ["~> 0.7"])
    s.add_dependency(%q<coveralls>, ["~> 0.8"])
    s.add_dependency(%q<gem-release>, ["~> 0.7"])
    s.add_dependency(%q<indexer>, ["~> 0.3"])
    s.add_dependency(%q<hoe>, ["~> 3.14"])
  end
end
