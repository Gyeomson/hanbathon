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
      t.string :text1
      t.string :text2
      t.string :text3
      t.string :text4
      t.string :text5

      t.timestamps null: false
    end
  end
end
