require 'rubygems'

require 'nokogiri'  

require 'open-uri'

page = Nokogiri::HTML(URI.open("https://coinmarketcap.com/all/views/all/"))

#cryptos_names_Xpath--------------------------------------------
cryptos_names = page.xpath('//*[@id="__next"]/div[2]/div[2]/div/div[1]/div/div[2]/div[3]/div/table/tbody/tr/td[3]/div')
puts cryptos_names.map(&:text)
names_list = cryptos_names.map(&:text)

#crypto_values_Xpath----------------------------------------------------------------
cryptos_values = page.xpath('//*[@id="__next"]/div[2]/div[2]/div/div[1]/div/div[2]/div[3]/div/table/tbody/tr/td[5]/div/a/span')
puts cryptos_values.map(&:text)
values_list = cryptos_values.map(&:text)

#hash_names_and_values----------------------------------------------------

  cryptos_names.zip(values_list).each do |names, values|

  end