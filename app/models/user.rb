class User < ActiveRecord::Base

    # Make the user followable & a follwer, as well as a liker
    acts_as_followable
    acts_as_follower
    acts_as_liker

    # Set up for devise
    devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :trackable, :validatable
  attr_accessible :name, :email, :password, :password_confirmation, :hobbies, :remember_me, :avatar
    validates :name, presence: true

    has_many :posts
    has_many :comment
    has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "50x50>" }, :default_url => "avatar/missing.jpg"



    def self.search(search)
      if search
        find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
      else
        find(:all)
      end
    end


end
