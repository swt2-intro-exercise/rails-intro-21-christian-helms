require 'rails_helper'

describe "Index author page", type: :feature do
	it "should display the the full names and homepage links/
		of all authors in a table" do
		@alan = FactoryBot.create :author
		visit "authors#index"
		expect(page).to have_text(@alan.name())
		expect(page).to have_link(@alan.homepage, href: @alan.homepage)
	end
	it "should also contain a link to add a new author" do
		visit "authors#index"
		expect(page).to have_link("Create Author", href: new_author_path)
	end
end