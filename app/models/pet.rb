class Pet < ApplicationRecord
  SPECIES = %w(dog cat rat)

  validates :name, presence: true
  validates :species, inclusion: { in: SPECIES }

  def found_days_ago
    (Date.current - found_at).to_i
  end
end
