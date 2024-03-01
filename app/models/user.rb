class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

<<<<<<< HEAD
  has_many :books
=======
  belongs_to :books
>>>>>>> ffcab96c2a58ab026ee9112d49eae8d1d20e3463
  has_one_attached :profile_image

  validates :name, length: { minimum: 2, maximum: 20 }, uniqueness: true
  validates :introduction, length: {maximum: 50}
  
<<<<<<< HEAD
  
=======
>>>>>>> ffcab96c2a58ab026ee9112d49eae8d1d20e3463
  def get_profile_image
    (profile_image.attached?) ? profile_image : 'no_image.jpg'
  end
end
