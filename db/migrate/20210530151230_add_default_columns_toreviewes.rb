class AddDefaultColumnsToreviewes < ActiveRecord::Migration[6.0]
  def change
    add_column :reviews, :approved, :boolean, default:false
    add_column :reviews, :reviewed_by_admin, :boolean, default:false
  end
end
