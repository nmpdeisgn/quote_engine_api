class CreateQuotes < ActiveRecord::Migration[6.0]
  def change
    create_table :quotes do |t|
      t.string :content
      t.timestamps
    end
    add_index :quotes, :content
  end
end
