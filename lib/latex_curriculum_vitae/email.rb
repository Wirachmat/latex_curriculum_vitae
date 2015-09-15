#!/usr/bin/env ruby
# encoding: utf-8
# @author Sascha Manns
# @abstract CVEmail Module for latex_curriculum_vitae
#
# Copyright (C) 2015  Sascha Manns <samannsml@directbox.com>
# License: MIT

# Dependencies

# rubocop:disable Metrics/LineLength
# Module for creating the CV
module CVEmail
  # Method for creating the email
  # rubocop:disable Metrics/MethodLength
  # rubocop:disable Metrics/AbcSize
  # @param [String] contact Name of the contact
  # @param [String] emailaddress Email address of the contact
  # @param [String] jobtitle Title of the target job
  # @param [String] contact_sex Can be male, female or unknown
  # @param [String] proactive Can be yes or no
  def self.create_email(contact, emailaddress, jobtitle, contact_sex, proactive)
    # Hex codes from http://www.obkb.com/dcljr/charstxt.html
    space = '%20'
    crlf = '%0D%0A'
    ampersand = '%26'

    if contact == ''
      introduction = 'Sehr geehrte Damen und Herren,'
    else
      contact.gsub!(/ /, '%20')
      if contact_sex == 'male'
        introduction = "Sehr geehrter Herr #{contact},"
      else
        introduction = "Sehr geehrte Frau #{contact},"
      end
    end
    introduction.gsub!(/ /, "#{space}")

    jobtitle.gsub!('\&', "#{ampersand}")
    jobtitle.gsub!(/ /, "#{space}")

    if proactive == 'yes'
      subject = "Initiativbewerbung um einen Arbeitsplatz als #{jobtitle}"
    else
      subject = "Bewerbung um einen Arbeitsplatz als #{jobtitle}"
    end

    subject.gsub!(/ /, "#{space}")

    # rubocop:disable Style/MultilineOperationIndentation
    body = "#{introduction}" + "#{crlf}" + "#{crlf}" +
          'gerne möchte ich mich bei Ihnen für die obige Stelle bewerben.' + "#{crlf}" +
          'Ich kann auf einige Jahre im IT-Bereich zurückblicken und war' + "#{crlf}" +
          'hauptsächlich in den Bereichen Support und Geschäftsprozess- ' + "#{ampersand}" + "#{crlf}" +
          'Anwendungsdokumentation tätig, zuletzt im Bankbereich.' + "#{crlf}" + "#{crlf}" +
          'Auf die übliche übertriebene Selbstdarstellung verzichte ich an dieser' + "#{crlf}" +
          'Stelle, da dies nicht mein Stil ist und Sie tatsächlich ohne mich' + "#{crlf}" +
          'auskommen würden.' + "#{crlf}" + "#{crlf}" +
          'Dennoch freue ich mich auf eine Einladung zum Vorstellungsgespräch.' + "#{crlf}" + "#{crlf}" +
          'Meine Bewerbungsunterlagen sind der Mail als Anhang beigefügt.' + "#{crlf}"
    body.gsub!(/ /, "#{space}")

    home = Dir.home
    prefix = "#{home}/.rvm/rubies/default"
    datadir = "#{prefix}/share"
    attachment = "#{datadir}/latex_curriculum_vitae/Bewerbungsunterlagen_Manns.pdf"
    system("thunderbird mailto:#{emailaddress}?subject=#{subject}\\&body=#{body}\\&attach=#{attachment}")
  end
end
