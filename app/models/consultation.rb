class Consultation < ApplicationRecord
    belongs_to :client

    scope :not_processed, -> {where(processed: false)}
    scope :processed, -> {where(processed: true)}
end
