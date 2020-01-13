class Planet < ApplicationRecord
    validates :name, presence: true
end
