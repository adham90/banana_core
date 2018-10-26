class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users, id: :uuid do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :avatar
      t.string :password_digest

      t.timestamps
    end
  end
end
