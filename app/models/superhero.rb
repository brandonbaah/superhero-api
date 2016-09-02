class Superhero < ActiveRecord::Base
  validates :superhero_name, :superhero_power, presence: true
end
