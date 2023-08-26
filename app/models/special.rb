class Special < ApplicationRecord
    has_many :side_options, dependent: :destroy 
end
