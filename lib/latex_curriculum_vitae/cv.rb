#!/usr/bin/env ruby
# encoding: utf-8
# @author Sascha Manns
# @abstract CV Module for latex_curriculum_vitae
#
# Copyright (C) 2015  Sascha Manns <samannsml@directbox.com>
# License: MIT

# Dependencies

# Module for creating the CV
module CV
  # Create Curriculum Vitae method
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
