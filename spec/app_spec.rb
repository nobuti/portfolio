require_relative './spec_helper'

describe "Portfolio" do

  before(:each) do
    get '/'
  end 

  it "should respond to GET /" do
    last_response.should be_ok
  end

  it "should have right title /" do
    last_response.body.should match(/<title>Buti | front-end developer<\/title>/)
  end

  it "should have github link" do
    last_response.body.should match(/<a class="link" href="https:\/\/github.com\/nobuti" title="github">https:\/\/github.com\/nobuti<\/a>/)
  end

  it "should have contact link" do
    last_response.body.should match(/<a class="link" href="mailto:buti@nobuti.com" title="hire me">Let's talk<\/a>/)
  end

end

describe "Resume" do
  
  before(:each) do
    get "/resume"
  end    

  it "should respond to GET /resume" do
    last_response.should be_ok
  end

end