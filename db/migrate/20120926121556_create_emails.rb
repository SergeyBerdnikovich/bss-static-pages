class CreateEmails < ActiveRecord::Migration
  def change
    create_table :emails do |t|
      t.string :name
      t.string :surname
      t.string :email

      t.timestamps
    end
  end
end