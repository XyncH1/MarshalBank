class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.integer :account_number
      t.string :full_name
      t.string :SSN

      t.timestamps
    end
  end
end
