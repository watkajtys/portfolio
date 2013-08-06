task :gitscrape => :environment do 
	require 'nokogiri'
   require 'open-uri'
   require 'openssl'
	
   link = "https://github.com/watkajtys"
	OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE
  	page = Nokogiri::HTML(open(link))
  	stat = page.css("span.num").first.text.tr('A-Za-z', '').to_i
  	Stat.create(:gitstat => stat)

end