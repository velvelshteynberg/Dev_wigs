class AddforeignKeyToreviews < ActiveRecord::Migration[6.0]
  def change
      add_foreign_key :reviews, :clients
  end
end
