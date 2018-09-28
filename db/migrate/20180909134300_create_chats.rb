class CreateChats < ActiveRecord::Migration[5.1]
  def change
    create_table :chats do |t|
      t.string :name
      t.text :descript

      t.timestamps
    end
  end
end
