class AlterDogsRegistrationAddUserIdColumn < ActiveRecord::Migration[5.0]
  def change
  	add_column :dog_registrations, :user_id, :integer
  	add_index :dog_registrations, :user_id
  end
end
