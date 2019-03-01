class CreateTickets < ActiveRecord::Migration[5.2]
  def change
    create_table :tickets do |t|
      t.string :request_number
      t.string :sequence_number
      t.string :request_type
      t.datetime :response_due_data
      t.string :primary_sa_code
      t.string :additional_sa_codes, array: true, default: []
      t.text :digsite_info

      t.timestamps
    end
  end
end
