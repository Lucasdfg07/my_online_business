class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one_attached :avatar

  validates_presence_of :name, :email, :age

  def perfil_photo
    if self.avatar.attached?
        self.avatar
    else
        'no-photo'
    end
  end
end
