class Review < ApplicationRecord
    belongs_to :client
    accept_nested_attributes_for :client
end
