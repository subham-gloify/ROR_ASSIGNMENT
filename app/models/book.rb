class Book < ApplicationRecord
  belongs_to :authors
  belongs_to :librarry
end
