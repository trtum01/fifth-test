class CreateInfos < ActiveRecord::Migration[5.2]
  def change
    create_table :infos do |t|
      t.string :address, null: false
      t.string :telephone, limit: 25
      t.references :article, foreign_key: true

      t.timestamps
    end
  end
end
