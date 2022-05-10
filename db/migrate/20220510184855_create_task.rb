class CreateTask < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.integer :priority
      t.string :name
      t.timestamp :created_at
      t.integer :category
    end
  end
end
