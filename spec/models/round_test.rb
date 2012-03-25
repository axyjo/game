require "minitest_helper"

describe Round do
  it "does not validate when both duration and ends_at are specified" do
    round = Round.create(starts_at: Time.now, ends_at: 4.minutes.from_now, duration: 300.seconds)
    round.valid?.must_equal false
  end
end
