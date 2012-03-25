require "minitest_helper"

describe "Main integration" do
  describe "GET /" do
    it "should load the main page" do
      body.wont_be_empty
    end
  end
end
