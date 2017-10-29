class CreateCapstones < ActiveRecord::Migration[5.1]
  def change
    create_table :capstones do |t|
      t.string :capstone_name
      t.text :description
      t.string :capstone_url
      t.string :screenshot
      t.integer :student_id

      t.timestamps
    end
  end
end
