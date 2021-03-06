require "bill_pro/version"
require 'rest-client'


# API operations
require 'bill_pro/api_operations/request'

# Resources
require 'bill_pro/util'
require 'bill_pro/bill_pro_object'
require 'bill_pro/api_resource'
require 'bill_pro/authorize'
require 'bill_pro/bill_pro_response'

module BillPro
  class << self
    attr_accessor :api_key, :api_base, :api_version
  end
  @api_base = 'https://gateway.billpro.com/'
  @api_default_header = {:content_type => :xml}

  def self.api_url(url='', api_base_url=nil)
    (api_base_url || @api_base) + url
  end

  def self.request(method: :post, url: @api_base, payload: '', header: @api_default_header)
    request_opts ||= {}
    request_opts[:method] = method
    request_opts[:url] = url
    request_opts[:payload]= payload
    request_opts[:header] = header
    execute_request(request_opts)
  end

  def self.execute_request(opts)
    parse(RestClient::Request.execute(opts))
  end

  def self.parse(response)
    BillProResponse.parse(response)
  end
end
