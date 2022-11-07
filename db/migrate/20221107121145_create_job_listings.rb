class CreateJobListings < ActiveRecord::Migration[6.1]
  def change
    create_table :job_listings do |t|
      t.string :title
      t.string :body
      t.datetime :date
      t.boolean :completed, default: false
      t.integer :category_id
      t.integer :user_id
    end
  end
end
