class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.string :name
      t.string :lastname
      t.integer :age
      
      t.timestamps
    end
  end
end
