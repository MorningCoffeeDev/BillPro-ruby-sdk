module BillPro
  class APIResource < BillProObject
    extend BillPro::APIOperations::Request
    def self.retrieve
      self.request(:post)
    end
  end
end
