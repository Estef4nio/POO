class Atividade < ApplicationRecord
  belongs_to :modalidade
  belongs_to :estudante
end
