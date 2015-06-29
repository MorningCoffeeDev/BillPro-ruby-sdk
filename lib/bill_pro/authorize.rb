module BillPro
  class Authorize < BillPro::APIResource
    @payload = "<Request type='Authorize'><AccountID>91178660</AccountID><AccountAuth>GoPJwdRDRKlcHpcg</AccountAuth></Request>"
    @header = {:content_type => :xml}

    def self.retrieve
      self.request(payload: build_request_body, header: build_request_header)
    end

    def self.build_request_body
      @payload
    end

    def self.build_request_header
      @header
    end
  end
end
