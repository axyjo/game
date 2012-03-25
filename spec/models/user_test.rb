require "minitest_helper"

describe User do
  it "validates when the email address is valid" do
    user = User.create(email: "bob@example.com")
    user.valid?.must_equal true
  end

  it "does not validate when the email does not contain a TLD" do
    user = User.create(email: "alice@localhost")
    user.valid?.must_equal false
  end

  it "validates when there is a plus in the email address" do
    user = User.create(email: "bob+test@example.com")
    user.valid?.must_equal true
  end

  it "does not validate when the email host is an IP address" do
    user = User.create(email: "alice@127.0.0.1")
    user.valid?.must_equal false
  end
end
