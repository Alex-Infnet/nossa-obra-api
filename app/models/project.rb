class Project < ApplicationRecord
  enum status: [:waiting_approval, :approved, :started, :suspended, :cancelled, :executed]

  belongs_to :client, optional: true
end
