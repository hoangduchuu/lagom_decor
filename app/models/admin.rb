class Admin < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable :invitable,
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, :validatable, :confirmable, :lockable, :timeoutable

  ROLE = [['MODERATOR', 'moderator'], ['ADMIN', 'admin']]
end
