class CreateDogRegistrations < ActiveRecord::Migration[5.0]
  def change
    create_table :dog_registrations do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :address_1
      t.string :address_2
      t.string :city
      t.string :state
      t.string :zip
      t.string :country
      t.string :phone
      t.string :second_owner_name
      t.string :second_owner_phone
      t.string :dog_name
      t.string :dog_sex
      t.string :dog_breed
      t.string :dog_weight
      t.date :birthday
      t.string :vet
      t.text :dog_desription
      t.text :dog_daycare_history
      t.string :second_dog_name
      t.string :second_dog_sex
      t.string :second_dog_breed
      t.string :second_dog_weight
      t.date :second_dog_birthday
      t.text :second_dog_description
      t.text :comments
      t.string :origin
      t.string :referral

      t.timestamps
    end
  end
end
