class CreateDomains < ActiveRecord::Migration[5.2]
  def change
    create_table :domains do |t|
      t.integer :authority_score
      t.integer :age
      t.integer :link

      t.timestamps
    end
  end
end
