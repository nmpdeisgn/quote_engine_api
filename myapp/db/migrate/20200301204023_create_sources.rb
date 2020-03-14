class CreateSources < ActiveRecord::Migration[6.0]
	def change
		remove_index :quotes, :content
		add_index :quotes, :content, unique: true
		remove_index :authors, :name
		add_index :authors, :name, unique: true

		add_column :quotes, :source, :string, null: true
		add_column :quotes, :details, :text, null: true
		add_column :quotes, :author_id, :integer
		add_foreign_key :quotes, :authors, column: :author_id
		add_index :quotes, [:content, :author_id, :source], name: :index_sources_on_content_author_id_and_source, unique: true
	end
end
