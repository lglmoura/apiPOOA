class Disciplina < ApplicationRecord
  belongs_to :professor
  validates_presence_of :nome
  validates_presence_of :periodo
end
