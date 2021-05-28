class ApprovalsController < ApplicationController

    def index 
        @not_approved_and_not_looked_over_reviews = Review.all.not_approved.not_looked_over_by_admin
    end 
end
