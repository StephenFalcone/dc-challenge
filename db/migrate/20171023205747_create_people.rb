class CreatePeople < ActiveRecord::Migration[5.1]
  def change
    create_table :people, id: false do |t|
      t.integer :id
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :gender
      t.string :city
      t.string :street
      t.string :state
      t.string :country
      t.string :language
      t.date :birthdate

      t.timestamps
    end
  end
end
