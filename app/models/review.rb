class Review < ApplicationRecord
    belongs_to :client 

    scope :not_approved, -> {where(approved: false)}
    scope :approved, -> {where(approved: true)}
end
