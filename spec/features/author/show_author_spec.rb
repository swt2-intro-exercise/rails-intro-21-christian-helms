require 'rails_helper'

describe "Show author page", type: :feature do
	it "should display the details of the author" do
		@alan = FactoryBot.create :author
		visit author_path(@alan)
		expect(page).to have_text(@alan.first_name)
		expect(page).to have_text(@alan.last_name)
		expect(page).to have_text(@alan.homepage)
	end
	it "should have a link to the edit page of the author" do
		@alan = FactoryBot.create :author
		visit author_path(@alan)
		expect(page).to have_link(href: edit_author_path(@alan))
	end
end