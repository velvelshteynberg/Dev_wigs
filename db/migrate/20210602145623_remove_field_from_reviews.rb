class RemoveFieldFromReviews < ActiveRecord::Migration[6.0]
  def change
    remove_column :reviews, :reviewed_by_admin, :boolean
  end
end
