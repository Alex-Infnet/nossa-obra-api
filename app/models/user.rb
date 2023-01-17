class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable, :recoverable, :rememberable, :validatable
  
  before_validation :set_username

  belongs_to :client, optional: true

  def set_username
    if !username?
      username = email.split("@").first
    end
  end
end
