require 'ostruct'
class Api < OpenStruct
  def intialize(api)
    @api_info = nil
  end
  
  def api_info
    unless @api_info
      @api_info = OpenStruct.new(content['api'])
    end
    @api_info
  end

end

=begin

{
  "id"=>"http://www.programmableweb.com/api/dopplr", 
  "title"=>"dopplr", 
  "link"=>[
    {"href"=>"http://www.programmableweb.com/api/dopplr"}, 
    {"rel"=>"self", "href"=>"http://api.programmableweb.com/apis/dopplr"}, 
    {"rel"=>"edit", "href"=>"http://api.programmableweb.com/apis/dopplr?editversion=1198466343"}
  ], 
  "author"=>{"name"=>nil}, 
  "summary"=>"Community travel service", 
  "content"=>{
    "type"=>"application/xml", 
    "api"=>{
      "xmlns:pw"=>"http://www.programmableweb.com/api/opensearch/1.0/", 
      "rating"=>"5.0", "name"=>"dopplr", "label"=>"dopplr", "package"=>nil, 
      "author"=>nil, "description"=>"From their site: Dopplr lets you share your travel plans privately with a group of friends and colleagues whom you have chosen. It then tells you when people you know will be in the same cities. It also reminds you of people who live in the places you&#039;re planning to visit. The API is based on Google AuthSub. We intend to replace this AuthSub clone implementation with OAuth in the near future.", 
      "type"=>"1", "downloads"=>nil, "useCount"=>nil, 
      "icon"=>"http://www.programmableweb.com/images/apis/at605.png", 
      "favicon"=>"http://www.programmableweb.com/images/apis/icons/af605.ico", 
      "sampleUrl"=>"http://dopplr.pbworks.com/w/disabled/tos_violation", 
      "downloadUrl"=>nil, "dateModified"=>"2007-12-24T03:19:03Z", 
      "remoteFeed"=>nil, "numComments"=>nil, 
      "commentsUrl"=>"http://api.programmableweb.com/apis/dopplr/comments", 
      "tags"=>{"tag"=>["deadpool", "social", "travel"]}, 
      "category"=>"Travel", 
      "protocols"=>"REST", 
      "serviceEndpoint"=>"https://www.dopplr.com/api/", 
      "version"=>nil, 
      "wsdl"=>nil, 
      "dataFormats"=>"XML, JSON", 
      "apigroups"=>nil, 
      "example"=>nil,
      "clientInstall"=>"No", 
      "authentication"=>"Google AuthSub", 
      "ssl"=>"Yes", 
      "readonly"=>"Yes", 
      "VendorApiKits"=>nil, 
      "CommunityApiKits"=>"[[http://www.hackdiary.com/misc/dopplr.rb Ruby Client]], [[http://dopplr.pbwiki.com/Prototype+PHP+Client PHP Client]], [[http://search.cpan.org/~simonw/Net-Dopplr/lib/Net/Dopplr.pm Perl Client]], and [[http://dopplr.pbwiki.com others]]", 
      "blog"=>nil, "forum"=>nil, "support"=>nil, "accountReq"=>nil, "commercial"=>nil, 
      "provider"=>"http://pbwiki.com", "managedBy"=>nil, "nonCommercial"=>nil, "dataLicensing"=>nil, "fees"=>nil, "limits"=>nil, 
      "terms"=>"[[http://www.dopplr.com/main/terms_of_service]]", "company"=>nil
    }
  }, 
  "updated"=>"2007-12-24T03:19:03Z"
}

=end