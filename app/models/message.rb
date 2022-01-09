class Message < ApplicationRecord
  # tracks users present on an instance of this model
  include Cubism::Presence

  belongs_to :user
end
