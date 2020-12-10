class Track < ApplicationRecord
  belongs_to :album
  belongs_to :artist

  validates :name, :length, :release_date, presence: true
end
