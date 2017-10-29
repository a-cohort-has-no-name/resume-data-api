class CreateExperiences < ActiveRecord::Migration[5.1]
  def change
    create_table :experiences do |t|
      t.datetime :start_date
      t.string :end_date
      t.string :datetime
      t.string :job_title
      t.string :company_name
      t.string :details
      t.integer :student_id

      t.timestamps
    end
  end
end
