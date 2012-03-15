require File.expand_path("../../spec_helper.rb", __FILE__)

describe "RtfToHtml" do
  let(:file_name) { "/Users/dgodd/Downloads/Chapter 1 - Wedding Tournament  (1).rtf" }
  let(:rtf) { RtfToHtml.new(open(file_name).read.encode('UTF-8')) }

  it "#to_s" do
    rtf.to_s.should =~ /I heard the Warlord was back in town and thought/
  end
end
