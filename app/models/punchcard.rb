class Punchcard < ApplicationRecord
  include Slugable
  belongs_to :user, dependent: :delete

  #Callback
  after_create do
    update(first_punch: false)
  end 
end

