require 'csv'

module CVOutfile
  def self.add_to_outfile(jobtitle, company, contact, emailaddress, csvout)
    home = Dir.home
    time = Time.new
    date = time.strftime('%Y-%m-%d')
    contact.gsub!('%20', ' ')
    jobtitle.gsub!('%20', ' ')
    jobtitle.gsub!('%26', '&')
    if File.exist?(csvout)
      puts 'do nothing'
    else
      FileUtils.touch(csvout)
      File.write "#{csvout}", <<EOF
date,company,job,contact,email,status
EOF
    end
    CSV.open("#{csvout}", 'a+') do |csv|
      #datum,firma,stelle,kontakt,email,status
      csv << ["#{date}","#{company}","#{jobtitle}","#{contact}","#{emailaddress}",'Open']
    end
  end
end