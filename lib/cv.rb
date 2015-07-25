# encoding: utf-8

# Module for creating the CV
module CV
  def self.create_cv
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