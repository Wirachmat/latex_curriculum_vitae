require csv
module CVOutfile
  def self.add_to_outfile(jobtitle, company, contact, emailaddress)
    # CSV.open("file.csv", "a+") do |csv|
    #   csv << ["cow", "3","2500"]
    # end
    date = time.strftime('%Y-%m-%d')
    CSV.open('manns_bewerbungen.csv', 'a+') do |csv|
      #datum,firma,stelle,kontakt,email,status
      csv << ["#{date}","#{company}","#{jobtitle}","#{contact}","#{emailaddress}",'Open']
    end
  end
end