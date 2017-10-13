class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |column|
      column.string :name
      column.string :email

      column.timestamps
    end
  end
end
