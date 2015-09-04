# latex_curriculum_vitae - a Gem for Job-Applications with LaTEX

| What                          | Status                                                                                                                                                                              |
|-------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| license                       | [![license](http://img.shields.io/:license-gpl3-blue.svg)](http://www.gnu.org/licenses/gpl-3.0.html)                                                                                |
| last public version           | [![publicversion](https://badge.fury.io/rb/latex_curriculum_vitae.png)](http://rubygems.org/gems/latex_curriculum_vitae)                                                                      |
| downloads latest              | [![downloads-latest](https://img.shields.io/gem/dtv/latex_curriculum_vitae.svg)](https://rubygems.org/gems/latex_curriculum_vitae)                                                            |
| downloads all                 | [![downloads-all](https://img.shields.io/gem/dt/latex_curriculum_vitae.svg)](https://rubygems.org/gems/latex_curriculum_vitae)                                                                |
| code quality                  | [![codeclimate](https://codeclimate.com/github/saigkill/latex_curriculum_vitae.png)](https://codeclimate.com/github/saigkill/latex_curriculum_vitae)                                          |
| dependency check              | [![gemnasium](https://gemnasium.com/saigkill/latex_curriculum_vitae.png)](https://gemnasium.com/saigkill/latex_curriculum_vitae)                                                              |
| still maintained?             | [![stillmaintained](http://stillmaintained.com/saigkill/latex_curriculum_vitae.png)](http://stillmaintained.com/saigkill/latex_curriculum_vitae)                                              |
| documentation                 | http://www.rubydoc.info/gems/latex_curriculum_vitae                                                                                                                                    |
| Bugreports & Feature requests | http://saigkill-bugs.myjetbrains.com/youtrack/issues                                                                                                                              |
| authors blog                  | http://saigkill.github.io                                                                                                                                                         |
| openhub statistics            | https://www.openhub.net/l/latex_curriculum_vitae                                                                                                                                       |
| donations                     | [![pledgie](https://pledgie.com/campaigns/30094.png?skin_name=chrome)](https://pledgie.com/campaigns/30094)                                                                         |
| donations                     | [![gratipay](http://img.shields.io/gratipay/saigkill.svg)](https://gratipay.com/~saigkill/)                                                                                         |
| donations                     | [![amazon](http://tsv-neuss.de/cms/upload/News-Bilder/amazon1.png)](http://www.amazon.de/registry/wishlist/D75HOEQ00BDD)                                                            |

## Description

latex_curriculum_vitae is a Rubygem which helps you to create your job application. After the program has started, a little Window comes up
and asks you for the needed information like the jobtitle, company name, contact name, email address and so on.
Then it builds a cover and the resume by working with LaTEX. After this is finished, it creates an email with the application attached.
Also it puts a standard text into the created email which you can extend to match the needed quality.
After that it creates a new record into a csv file. So you can print out every time the present status.

## Installation

The installation is very easy.

    gem install latex_curriculum_vitae
    cd /path/to/gem (In case of using RVM ~/.rvm/gems/ruby-2.2.1/gems/latex_curriculum_vitae
    ./setup.rb

You have to run the setup after each gem update.

## Hard dependencies
* pdflatex & xelatex
* yad

## Usage

    type in the console: "latexcv.rb"

Or just use the Launcher.

## The tweaks (Ruby)

* .latex_curriculum_vitae: Contains a personal_data.tex where your personal information is stored. Actually it is used by the Cover.
  Also there is stored the CSV-File what contains the records of all finished applications.
* /home/sascha/.rvm/rubies/ruby-2.2.1/lib/ruby/site_ruby/2.2.0/latex_curriculum_vitae: There are placed the Ruby-libraries. Instead of 
  /home/sascha you have to place your username. Also the 2.2.1 has to be match your Rubyversion. So you have to check this first.
  Also you have to modify the email.rb for your needs.
* /home/sascha/.rvm/rubies/ruby-2.2.1/share/latex_curriculum_vitae: There are placed the LaTEX source files.

## The tweaks (LaTEX)

The LaTEX source directory contains that subdirectories:

* Appendix
** Bibliography (a BibTEX file for your publications)
** Certificates (for different certificates)
** Empoyers_Reference (for the references from the last employers)
** First_References (for your job-training or the german Ausbildung)
** Study (for study stuff)

* Cover (contains the Cover.tex)
The Cover.tex use that includes:

\input{$HOME/.latex_curriculum_vitae/personal_data.tex}
\input{$HOME/.latex_curriculum_vitae/entity.tex}
The entity.tex will be generated by running the program.

Also it includes my picture from the Picture directory.
\begin{textblock}{3}(3.0,18.5)
	\fbox{\includegraphics[width=4cm]{../Pictures/Sascha1p.jpg}}
\end{textblock} 

* Motivational_Letter (actually not implemented in compiling)

* Pictures

* Resume (the Curriculum Vitae itself)

The resume includes the following:
\addbibresource{../Appendix/Bibliography/bibliography1.bib}

\includepdf{../Cover/Cover}

\includegraphics[scale=0.7]{../Pictures/signatur.png}

\begin{figure}  
  \includegraphics[page=1,scale=0.7,angle=180]{../Appendix/Employers_Reference/hays.pdf}
\end{figure}
\includepdf{../Appendix/Study/foo}
\includepdf{../Appendix/Certificates/thm-webeng1}
\includepdf{../Appendix/Employers_Reference/openslx}
\includepdf{../Appendix/Employers_Reference/openslx1}
\includepdf{../Appendix/Certificates/kompetenzpass12013}
\includepdf{../Appendix/Certificates/Zertifikat_Sascha_Manns1}
\includepdf{../Appendix/Employers_Reference/wtg}
\includepdf{../Appendix/First_References/ihk}

You can modify all the LaTEX sources to match your life.

## Feature Requests & Bug Reports
You can file Requests and Reports on the my bugtracker: http://saigkill-bugs.myjetbrains.com/youtrack/issues.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request