class Category < ApplicationRecord
  has_many :subcategory ,dependent: :destroy

  rails_admin do
  navigation_label "Cart Management"
  label "Category"
  label_plural "Categories"
        
  list do
    sort_reverse true
    field :id
    field :name
    field :description
  end
        
  show do
    field :id
    field :name
    field :description
  end

  edit do
    field :id
    field :name
    field :description
  end
            
  end
end
