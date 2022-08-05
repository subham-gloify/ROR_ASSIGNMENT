class CreateBookModels < ActiveRecord::Migration[5.2]
  def change
    create_table :book_models do |t|
      t.string :title
      t.datetime :published_at
      t.string :language

      t.timestamps
    end
  end
end
