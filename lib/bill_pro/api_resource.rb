module BillPro
  class APIResource < BillProObject
    extend BillPro::APIOperations::Request
    def self.retrieve
      raise NotImplementedError
    end
  end
end
