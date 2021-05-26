class Client < ApplicationRecord
    has_many :consultation_requests
    has_many :reviews
end
