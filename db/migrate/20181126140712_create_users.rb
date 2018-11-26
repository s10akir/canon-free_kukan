class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :last_name
      t.string :first_name
      t.integer :sex
      t.date :birth_of_day
      t.integer :postal_code
      t.string :address
      t.string :comment
      t.boolean :blacklist

      t.timestamps
    end
  end
end
