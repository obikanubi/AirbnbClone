class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates :username, :first_name, :last_name, :phone_number, 
            :city, :state, :country, presence: true
  has_attached_file :avatar, styles: { medium: "200x200>", thumb: "50x50>" }, default_url: ":style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/

end



