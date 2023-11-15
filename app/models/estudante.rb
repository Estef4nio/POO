class Estudante < ApplicationRecord
  belongs_to :users
  has_many :atividades
end
