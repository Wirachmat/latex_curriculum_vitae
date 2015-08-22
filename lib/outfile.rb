require 'csv'

module CVOutfile
  def self.add_to_outfile(jobtitle, company, contact, emailaddress)
    # CSV.open("file.csv", "a+") do |csv|
    #   csv << ["cow", "3","2500"]
    # end
    time = Time.new
    date = time.strftime('%Y-%m-%d')
    contactcsv = contact.gsub('%20', ' ')
    jobtitlecv = jobtitle.gsub('%20', ' ')
    CSV.open('manns_bewerbungen.csv', 'a+') do |csv|
      #datum,firma,stelle,kontakt,email,status
      csv << ["#{date}","#{company}","#{jobtitlecv}","#{contactcsv}","#{emailaddress}",'Open']
    end
  end
end