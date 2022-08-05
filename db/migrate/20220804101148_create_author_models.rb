class CreateAuthorModels < ActiveRecord::Migration[5.2]
  def change
    create_table :author_models do |t|
      t.string :name
      t.datetime :dob

      t.timestamps
    end
  end
end
