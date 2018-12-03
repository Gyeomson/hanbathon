class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :id_number
      t.string :university
      t.string :grade
      t.string :mobile
      t.string :major
      t.text :text1
      t.text :text2
      t.text :text3
      t.text :text4
      t.text :text5

      t.timestamps null: false
    end
  end
end
