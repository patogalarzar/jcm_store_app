class CreateKeywords < ActiveRecord::Migration[6.1]
  def change
    create_table :keywords do |t|
      t.string :name, unique: true
      t.belongs_to :category, null: false, foreign_key: true

      t.timestamps
    end
    add_index :keywords, :name, unique: true
  end
end
