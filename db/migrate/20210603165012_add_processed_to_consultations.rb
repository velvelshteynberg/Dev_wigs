class AddProcessedToConsultations < ActiveRecord::Migration[6.0]
  def change
    add_column :consultations, :processed, :boolean, default:false
  end
end
