class Menu < ApplicationRecord
  def self.import(file)
    accessible_attributes = %w[dish_name dish_description dish_type allergens Category Price]
    CSV.foreach(file.path,headers:true) do |row|
      menu=find_by_id(row['id']) || new
      menu.attributes = row.to_hash.slice(*accessible_attributes)
      menu.save!
    end
  end
end
