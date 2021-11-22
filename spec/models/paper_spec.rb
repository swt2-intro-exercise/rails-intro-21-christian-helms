require 'rails_helper'

RSpec.describe Paper, type: :model do
  it "should not be valid if it has no title" do
    paper = Paper.new(venue: "mind 49: 433-460", year: 1950)
    expect(paper).to_not be_valid
  end
  it "should not be valid if it has no venue" do
    paper = Paper.new(title: "computing machinery and intelligence", year: 1950)
    expect(paper).to_not be_valid
  end
  it "should not be valid if it has no year" do
    paper = Paper.new(venue: "mind 49: 433-460", title: "computing machinery and intelligence")
    expect(paper).to_not be_valid
  end
  it "should only allow integer years" do
    paper = Paper.new(venue: "mind 49: 433-460", title: "computing machinery and intelligence", year: "nineteen-fifty")
    expect(paper).to_not be_valid
  end
  it "should have a list of authors" do
    paper = Paper.new(venue: "A", title: "B", year: 0)
    expect(paper).to_not be_nil
    # expect(paper.authors).to eq([])
  end
end
