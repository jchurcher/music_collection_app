class Track < ApplicationRecord
  belongs_to :album

  validates :name, :length, :release_date, presence: true
end
