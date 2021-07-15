class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.string :taskname
      t.string :tasktime
      t.text :taskbody
     
      t.references :category, null: false , foreign_key: true
      t.timestamps
    end
  end
end
