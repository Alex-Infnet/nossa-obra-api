class Activity < ApplicationRecord
  belongs_to :project
  belongs_to :category
  belongs_to :executor
end
