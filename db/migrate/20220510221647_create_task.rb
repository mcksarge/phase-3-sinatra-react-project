class CreateTask < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.string :name
      t.integer :category_id
      t.integer :person_id
      t.timestamp :created_at
    end
  end
end
