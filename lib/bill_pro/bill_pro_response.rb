require 'nokogiri'

module BillPro
  class BillProResponse
    attr_reader :resp_doc
    def self.parse(response)
      self.new(response)
    end

    def initialize(response)
      @resp_doc = Nokogiri::Slop(response).Response
    end

    def response_code
      @resp_doc.ResponseCode.content.to_i
    end
  end
end
