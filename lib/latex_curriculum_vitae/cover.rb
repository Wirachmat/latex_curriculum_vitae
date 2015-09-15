#!/usr/bin/env ruby
# encoding: utf-8
# @author Sascha Manns
# @abstract CoverModule for latex_curriculum_vitae
#
# Copyright (C) 2015  Sascha Manns <samannsml@directbox.com>
# License: MIT

# Dependencies

# Cover module
module Cover
  # Create cover method
  def self.create_cover
    system('pdflatex Cover.tex')
  end
end
