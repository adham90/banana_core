class CreateBikes < ActiveRecord::Migration[5.2]
  def change
    create_table :bikes, id: :uuid do |t|
      t.integer :status
      t.decimal :miles
      t.datetime :last_fix

      t.timestamps
    end
  end
end
