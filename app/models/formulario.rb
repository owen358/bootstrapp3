class Formulario < ApplicationRecord
  # belongs_to :user
  serialize :tick, Array
  serialize :alergia1, Array
  serialize :limites, Array
  serialize :activa, Array
end
