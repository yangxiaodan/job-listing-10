class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  def admin?
    email == 'dadan_2007@126.com'
  end

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


end
