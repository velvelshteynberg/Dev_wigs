class CreateConsultations < ActiveRecord::Migration[6.0]
  def change
    create_table :consultations do |t|
      t.string :request

      t.timestamps
    end
  end
end
