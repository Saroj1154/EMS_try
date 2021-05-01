class CreateEmployees < ActiveRecord::Migration[6.1]
  def change
    create_table :employees do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.integer :phone

      t.timestamps
    end
    add_index :employees, :email, unique: true
  end
end
