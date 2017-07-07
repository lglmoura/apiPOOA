class Professor < ApplicationRecord
  validates_presence_of :nome
  validates_presence_of :email
  validates_presence_of :telefone
end
