require 'spec_helper'

RSpec.describe BillPro::Authorize do

  describe "Successfull retrieve" do
    describe "call" do
      before :each do
        stub_request(:post, "https://gateway.billpro.com/").
          with(:body => "<Request type='AuthorizeCapture'><AccountID>91178660</AccountID><AccountAuth>GoPJwdRDRKlcHpcg</AccountAuth></Request>",
               :headers => {'Accept'=>'*/*; q=0.5, application/xml', 'Accept-Encoding'=>'gzip, deflate', 'Content-Length'=>'117', 'User-Agent'=>'Ruby'}).
          to_return(:status => 200, :body => "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<Response type=\"NAK\">\n  <ResponseCode>206</ResponseCode>\n  <Description>Transaction amount is required.</Description>\n  <Reference/>\n  <TransactionID>1435491181742068213</TransactionID>\n  <ProcessingTime>0.566144</ProcessingTime>\n</Response>\n", :headers => {})
      end
      it '101 on authorize' do
        resp = BillPro::Authorize.retrieve
        expect(resp.response_code).to eq(206)
      end
    end
  end
end
