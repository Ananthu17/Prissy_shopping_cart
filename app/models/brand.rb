class Brand < ApplicationRecord
  has_many :product ,dependent: :destroy
  has_one_attached :logo

  rails_admin do
    navigation_label "Cart Management"
    label "Brand"
    label_plural "Brands"
          
    list do
      sort_reverse true
      field :id
      field :name
      field :description
      field :logo
    end
          
    show do
      field :id
      field :name
      field :description
      field :logo
    end

    edit do
      field :id
      field :name
      field :description
      field :logo
    end
              
  end
end
