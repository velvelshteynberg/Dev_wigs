class RemoveConsultationRequests < ActiveRecord::Migration[6.0]
  def change
    remove_column :consultation_requests, :request, :strings
  end
end
