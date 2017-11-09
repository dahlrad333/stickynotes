class CreateNotes < ActiveRecord::Migration[5.1]
  def change
    create_table :notes do |t|
      t.string :body
      t.integer :order
      t.timestamps
    end
  end
end
