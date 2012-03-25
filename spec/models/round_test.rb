require "minitest_helper"

describe Round do
  it "uses duration when both end time and duration are specified" do
    start_time = Time.now
    end_time = start_time + 4.minutes
    duration_time = start_time + 5.minutes

    round = Round.create(starts_at: start_time, ends_at: end_time, duration: 5.minutes)
    round.valid?.must_equal true
    round.ends_at.must_equal duration_time
  end
end
