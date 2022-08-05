class CreateLibrarries < ActiveRecord::Migration[5.2]
  def change
    create_table :librarries do |t|
      t.string :name
      t.datetime :opening_time
      t.datetime :closing_time

      t.timestamps
    end
  end
end
