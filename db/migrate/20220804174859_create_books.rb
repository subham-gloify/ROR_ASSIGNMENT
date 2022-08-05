class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :title
      t.datetime :published_at
      t.string :language
      t.belongs_to :author, foreign_key: true
      t.belongs_to :library, foreign_key: true

      t.timestamps
    end
  end
end
