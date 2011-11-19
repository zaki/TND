class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.references :user     ,:null=>false
      t.string :name         ,:null=>false
      t.text :description    ,:null=>false
      t.integer :price       ,:null=>false ,:default=>0
      t.datetime :expires_at ,:null=>true
      t.boolean :public      ,:null=>false ,:default=>true

      t.timestamps
    end
  end
end
