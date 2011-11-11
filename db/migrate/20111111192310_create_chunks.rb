class CreateChunks < ActiveRecord::Migration
  def change
    create_table :chunks do |t|
      t.references :document
      t.integer :first_char_at
      t.integer :last_char_at

      t.timestamps
    end
    add_index :chunks, :document_id
  end
end
