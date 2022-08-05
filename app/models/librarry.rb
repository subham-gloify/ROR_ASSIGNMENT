class Librarry < ApplicationRecord
    has_many :books, dependent: :destroy
end
