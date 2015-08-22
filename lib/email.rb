# encoding: utf-8

# Module for creating the CV
module CVEmail
  def self.create_email(contact, emailaddress, jobtitle, contact_sex, proactive)
    if contact == ''
      introduction = 'Sehr%20geehrte%20Damen%20und%20Herren,'
    else #String.gsub("PHP", "Ruby")
      contact.gsub(' ', '%20')
      if contact_sex == 'male'
        introduction = "Sehr%20geehrter%20Herr%20#{contact},"
      else
        introduction = "Sehr%20geehrte%20Frau%20#{contact},"
      end
    end
    if proactive == 'yes'
      subject = "Initiativbewerbung%20um%20einen%20Arbeitsplatz%20als%20#{jobtitle}"
    else
      subject = "Bewerbung%20um%20einen%20Arbeitsplatz%20als%20#{jobtitle}"
    end
    body = "#{introduction}%0D%0A%0D%0Agerne%20möchte%20ich%20mich%20bei%20Ihnen%20für%20die%20obige%20Stelle%20bewerben.%0D%0AIch%20kann%20auf%20einige%20Jahre%20im%20IT-Bereich%20zurückblicken%20und%20war%0D%0Ahauptsächlich%20in%20den%20Bereichen%20Support%20und%0D%0AGeschäftsprozess/Anwendungsdokumentation%20tätig,%20zuletzt%20im%20Bankbereich.%0D%0AAuf%20die%20übliche%20übertriebene%20Selbstdarstellung%20verzichte%20ich%20an%20dieser%0D%0AStelle,%20da%20dies%20nicht%20mein%20Stil%20ist%20und%20Sie%20tatsächlich%20ohne%20mich%0D%0Aauskommen%20würden.%0D%0A%0D%0ADennoch%20freue%20ich%20mich%20auf%20eine%20Einladung%20zum%20Vorstellungsgespräch.%0D%0AMeine%20Bewerbungsunterlagen%20sind%20der%20Mail%20als%20Anhang%20beigefügt.%0D%0A"
    attachment = './Bewerbungsunterlagen_Manns.pdf'
    system("evolution mailto:#{emailaddress}?subject=#{subject}\\&body=#{body}\\&attach=#{attachment}")
  end
end

# old body: ,%0D%0Agerne%20möchte%20ich%20mich%20bei%20Ihnen%20für%20die%20obige%20Stelle%20bewerben.%0D%0A%0D%0AIch%20kann%20auf%20einige%20Jahre%20im%20IT-Bereich%20zurückblicken%20und%20war%0D%0Ahauptsächlich%20in%20den%20Bereichen%20Support%20und%0D%0AGeschäftsprozess/Anwendungsdokumentation%20tätig%20,zuletzt%20im%20Bankbereich.%0D%0AAuf%20die%20übliche%20übertriebene%20Selbstdarstellung%20verzichte%20ich%20an%20dieser%0D%0AStelle,%20da%20dies%20nicht%20mein%20Stil%20ist%20und%20Sie%20tatsächlich%20ohne%20mich%0D%0Aauskommen%20würden.%0D%0ADennoch%20freue%20ich%20mich%20auf%20eine%20Einladung%20zum%20Vorstellungsgespräch.%0D%0AMeine%20Bewerbungsunterlagen%20sind%20der%20Mail%20als%20Anhang%20beigefügt.%0D%0A
# evolution mailto:person@example.com?cc="second_person@example.com"\&subject="This Is The Subject"\&body="This is the body of the message"\&attach=Desktop/test_file.xml
#
# evolution mailto:person@example.com - Launches Evolution's e-mail composer and To: line
#     ?cc="Person@example.com" - CC: Line
#     \&subject="Subject" or ?subject="Subject" - Subject line
#     \&body="Body" - Body of the e-mail is everything after this line
#     \&attach=/path/file - Files to attach
#     %20 - Space
#     %0D%0A - CR/LF (new line)
#     %09 - Tab
#
# python command
#
# Python 2.x has it's own smtp module for creating e-mail, it's far more useful in most circumstances. But in this case, we want the composed evolution window.
#
# import os
# body_string = 'This is the body of the e-mail message'
# body_string = body_string.replace(' ','%20')
# os.popen('evolution mailto:person@example.com?subject=Test\&body=' + body_string)
#
#     import os - Use python's os module
#     body_string = 'This is the body of the e-mail message' - The body in normal text
#     body_string = body_string.replace(' ','%20') - Encode the spaces (evolution will decode them). Tabs, newlines,
#                   and other reserved strings need to be encoded.
#     os.popen('evolution mailto:person@example.com?subject=Test\&body=' + body_string) - The 'os.popen(cmd)' executes shell cmd.
#     Note that cmd is just a python string, and you can use all the string tools on it, like adding body_string