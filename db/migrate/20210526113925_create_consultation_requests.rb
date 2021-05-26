class CreateConsultationRequests < ActiveRecord::Migration[6.0]
  def change
    create_table :consultation_requests do |t|
      t.string :request

      t.timestamps
    end
  end
end
