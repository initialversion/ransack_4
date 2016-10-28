class Vote < ApplicationRecord
  # Direct associations

  belongs_to :user,
             :foreign_key => "voter_id"

  # Indirect associations

  # Validations

end
