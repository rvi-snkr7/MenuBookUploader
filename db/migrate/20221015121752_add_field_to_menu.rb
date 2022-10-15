class AddFieldToMenu < ActiveRecord::Migration[6.1]
  def change
    add_column :menus ,:dish_name ,:string
    add_column :menus ,:dish_description,:string
    add_column :menus ,:dish_type ,:string
    add_column :menus ,:allergens ,:string
    add_column :menus ,:Category ,:string
    add_column :menus ,:Price,:integer
  end
end
