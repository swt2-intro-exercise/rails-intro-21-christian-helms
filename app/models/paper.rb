class Paper < ApplicationRecord
	has_and_belongs_to_many :authors

	validates :title, presence: true
	validates :venue, presence: true
	validates :year, presence: true
	validates :year, numericality: {only_integer: true}

	scope :published_at, ->(time) { where("year = ?", time) if time.present? }
end
