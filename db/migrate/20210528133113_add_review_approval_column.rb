class AddReviewApprovalColumn < ActiveRecord::Migration[6.0]
  def change
    add_column :reviews, :approved, :string
    add_column :reviews, :reviewed_by_admin, :string 
  end
end
