class Client < ApplicationRecord
    has_many :consultations
    has_many :reviews

    #validate for the uniquess of a client validate: uniquness: true
end
