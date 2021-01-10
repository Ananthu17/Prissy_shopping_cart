class Product < ApplicationRecord
    belongs_to :subcategory
    belongs_to :brand
    has_one :rating

    has_one_attached :images

    rails_admin do
        navigation_label "Cart Management"
        label "Product"
        label_plural "Products"
              
        list do
          sort_reverse true
          field :id
          field :name
          field :price
          field :colour
          field :highlights
          field :specifications
          field :subcategory
          field :brand
          field :images
        end
              
        show do
            field :id
            field :name
            field :price
            field :colour
            field :highlights
            field :specifications
            field :subcategory
            field :brand
            field :images
        end
    
        edit do
            field :id
            field :name
            field :price
            field :colour
            field :highlights
            field :specifications
            field :subcategory
            field :brand
            field :images
        end
                  
      end
end
