class CreateCookies < ActiveRecord::Migration[5.2]
  
  def change
    create_table :cookies do |t|
      t.string :name
      t.string :cookie_type
      t.integer :user_id
    end

  end

end
