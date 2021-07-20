class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :social_networks

  has_one_attached :avatar

  validates_presence_of :name, :email, :age

  enum business: [:products, :services]

  def perfil_photo
    if self.avatar.attached?
        self.avatar
    else
        'no-photo'
    end
  end

  def question_responses_percentage
    count = 0
    
    count += 25 if self.created_facebook_page
    count += 25 if self.created_instagram_page
    count += 25 if self.created_linkedin_page
    count += 25 if self.created_youtube_page

    count
  end
end
