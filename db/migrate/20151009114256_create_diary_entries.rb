class CreateDiaryEntries < ActiveRecord::Migration
  def change
    create_table :diary_entries do |t|
      t.string :title
      t.text :entry

      t.timestamps null: false
    end
  end
end
