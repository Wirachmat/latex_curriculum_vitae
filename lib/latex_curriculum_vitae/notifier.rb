#!/usr/bin/env ruby
# encoding: utf-8
# @author Sascha Manns
# @abstract Notifier Module for latex_curriculum_vitae
#
# Copyright (C) 2015  Sascha Manns <samannsml@directbox.com>
# License: GPL-3

# Dependencies

# Module for notify the user
require 'notifier'

module Notifier
  def self.run
    home = Dir.home
    prefix = "#{home}/.rvm/rubies/default"
    datadir = "#{prefix}/share"
    img = "#{datadir}/latex_curriculum_vitae/Pictures/arbeitsagentur.png"
    Notifier.notify(
        :image => "#{img}",
        :title => "Your Job Application",
        :message => "Your Job Application was created now."
    )
  end
end