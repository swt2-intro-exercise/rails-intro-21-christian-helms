class AddHomepageToAuthors < ActiveRecord::Migration[6.0]
  def change
    add_column :authors, :homepage, :string
  end
end
