require 'rails_helper'

RSpec.describe Author, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
  it "should have a first name, last name and a homepage" do
    author = Author.new(first_name: "Joseph", last_name: "Fourier", homepage: "https://en.wikipedia.org/wiki/Joseph_Fourier")
    expect(author.first_name).to eq("Joseph")
    expect(author.last_name).to eq("Fourier")
    expect(author.homepage).to eq("https://en.wikipedia.org/wiki/Joseph_Fourier")
    expect(author.name()).to eq("Joseph Fourier")
  end
  it "should not be valid if it has no last name" do
    author = Author.new(first_name: "Alan", homepage: "http://wikipedia.com")
    expect(author).to_not be_valid
  end
  it "should be able to delete records" do
    author = FactoryBot.create :author
    author.destroy()
    query_result = Author.find_by(id: author.id)
    expect(query_result).to be_nil
  end
end
