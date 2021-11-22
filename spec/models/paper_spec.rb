require 'rails_helper'

RSpec.describe Paper, type: :model do
  it "should not be valid if it has no title" do
    paper = Paper.new(venue: "mind 49: 433-460", year: 1950)
    expect(paper).to_not be_valid
  end
end
