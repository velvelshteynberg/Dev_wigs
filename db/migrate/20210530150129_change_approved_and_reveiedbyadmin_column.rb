class ChangeApprovedAndReveiedbyadminColumn < ActiveRecord::Migration[6.0]
  def change
      remove_column :reviews, :approved, :string
      remove_column :reviews, :reviewed_by_admin, :string
  end
end
