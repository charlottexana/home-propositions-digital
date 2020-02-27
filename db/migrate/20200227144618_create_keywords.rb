class CreateKeywords < ActiveRecord::Migration[5.2]
  def change
    create_table :keywords do |t|
      t.string :name
      t.date :date
      t.integer :current_rank
      t.integer :initial_rank
      t.integer :previous_week_rank

      t.timestamps
    end
  end
end
