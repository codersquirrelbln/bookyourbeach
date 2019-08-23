class Beach < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  include PgSearch::Model
  pg_search_scope :search_by_title_and_syllabus,
    against: [:name, :location],
    using: {
      tsearch: { prefix: true }
    }
end
