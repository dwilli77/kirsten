class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :content, null: false
      t.text :notes
      t.boolean :is_complete, :default => false
      t.timestamps
    end
  end
end
