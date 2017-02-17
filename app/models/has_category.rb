class HasCategory < ApplicationRecord
  belongs_to :destination
  belongs_to :category
end
