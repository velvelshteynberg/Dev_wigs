class Review < ApplicationRecord
    belongs_to :client 

    scope :not_approved, -> {where(approved: false)}
    scope :not_looked_over_by_admin, -> {where(reviewed_by_admin: false)}
end
