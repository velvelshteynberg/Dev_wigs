class Review < ApplicationRecord
    belongs_to :client
    accepts_nested_attributes_for :client
end
