class Admin < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable, :invitable,
  :recoverable, :rememberable, :trackable, :validatable, :confirmable, :lockable, :timeoutable

  ROLE = [['MODERATOR', 'moderator'], ['ADMIN', 'admin']]
end
