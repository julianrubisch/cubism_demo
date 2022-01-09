class User < ApplicationRecord
  # establishes the class Cubism uses for user lookup
  include Cubism::User
end
