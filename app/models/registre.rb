class Registre < ActiveRecord::Base
  belongs_to :user
  belongs_to :trajet
end
