class Review < ApplicationRecord
    belongs_to :client 

    scope :not_approved, -> {where(approved: false)}
    scope :not_looked_over_by_admin, -> {where(reviewed_by_admin: false)}

    def self.first_name
        number = Review.client_id
        client = Client.find_by(id: number)
        client.first_name
    end 
end
