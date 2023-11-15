class User < ApplicationRecord
  has_many :estudantes
  has_many :coordenadores

end
