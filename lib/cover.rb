# encoding: utf-8

# Cover module
module Cover
  def self.create_cover
    system('pdflatex Cover.tex')
  end
end