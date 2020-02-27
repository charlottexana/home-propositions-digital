class CreatePropositions < ActiveRecord::Migration[5.2]
  def change
    create_table :propositions do |t|
      t.string :name
      t.string :status

      t.timestamps
    end
  end
end
