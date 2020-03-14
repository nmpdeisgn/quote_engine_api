class CreateSources < ActiveRecord::Migration[6.0]
  def change
    create_table :sources do |t|
      t.string :title, null: false
      t.text, :details, null: true
      t.integer :type, null: false, default: 0
      t.timestamps
    end
    add_index :sources, :type
    add_index :sources, [:title, :type], name: :index_sources_on_title_and_type, unique: true

    change_column :quotes, :content, null: false
    change_column :authors, :name, null: false
  end
end
