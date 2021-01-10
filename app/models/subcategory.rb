class Subcategory < ApplicationRecord
  belongs_to :category
  has_many :product ,dependent: :destroy

  rails_admin do
    navigation_label "Cart Management"
    label "Sub Category"
    label_plural "Sub Categories"
          
    list do
      sort_reverse true
      field :id
      field :name
      field :description
      field :category
    end
          
    show do
      field :id
      field :name
      field :description
      field :category
    end

    edit do
      field :id
      field :name
      field :description
      field :category
    end
              
  end
end
