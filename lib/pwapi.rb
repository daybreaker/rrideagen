require "net/http"
require "uri"
require 'json'
require 'nokogiri'
require 'active_support/core_ext/hash/conversions'

class PWApi

  def self.get_random_api
    url = "#{base_url}&page=#{get_random_page}"
    data = get_xml(url)

    hash = Hash.from_xml(data.css('entry')[get_random_item].to_s)['entry']
  end
  
  private
  def self.base_url
    "http://api.programmableweb.com/apis?apikey=#{api_key}"
  end
  
  def self.get_random_page
    (0..get_max_page).to_a.sample
  end
  
  def self.api_key
    "1234567890abcdef6019276547624973"
  end
  
  def self.page_size
    20
  end
  
  def self.get_xml(url = base_url)
    resp = Net::HTTP.get_response(URI.parse(url))
    data = resp.body
    
    xml = Nokogiri::XML(data)
  end
  
  def self.get_max_page
    total_entries = get_xml.xpath('//openSearch:totalResults').first.content
    (total_entries.to_i / page_size).ceil
  end
  
  def self.get_random_item
    (0..(page_size - 1)).to_a.sample
  end
  
  
end
