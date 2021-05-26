class Client < ApplicationRecord
    has_many :consultations
    has_many :reviews
end
