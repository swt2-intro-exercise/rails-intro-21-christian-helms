require 'rails_helper'


describe "Edit author page", type: :feature do
	it "should occour no error when a user tries to edit Alan Turing, i.e tries to visit me" do
		@alan = FactoryBot.create :author
		visit "/authors/" + (@alan.id).to_s + "/edit"
	end
	it "should be able edit a user, for example Alan Turing's homepage" do
		@alan = FactoryBot.create :author
		visit "/authors/" + (@alan.id).to_s + "/edit"
		page.fill_in('author[first_name]', with: 'Alan')
		page.fill_in('author[last_name]', with: 'Turing')
		page.fill_in('author[homepage]', with: 'https://www.turing.org.uk/')
		find('input[type="submit"]').click()
		@alan.reload()
		expect(@alan.homepage).to eq("https://www.turing.org.uk/")
	end
end