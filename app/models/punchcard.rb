class Punchcard < ApplicationRecord
  include Slugable
  belongs_to :user, dependent: :destroy

  #Callback
  after_create do
    update(first_punch: false)
  end 
end

