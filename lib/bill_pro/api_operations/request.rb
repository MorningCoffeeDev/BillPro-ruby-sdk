module BillPro
  module APIOperations
    module Request
      #module ClassMethods
        def request(method)
          BillPro.request(method)
        end

        #def self.included(base)
          #base.extend(ClassMethods)
        #end

        #protected
        #def request(method)
          #self.class.request(method)
        #end
      #end
    end
  end
end
