class RemoveConsultationRequestsTAble < ActiveRecord::Migration[6.0]
  def change
    drop_table :consultation_requests
  end
end
