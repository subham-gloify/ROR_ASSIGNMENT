class CreateLibraryModels < ActiveRecord::Migration[5.2]
  def change
    create_table :library_models do |t|
      t.string :name
      t.datetime :opening_time
      t.datetime :closing_time

      t.timestamps
    end
  end
end
