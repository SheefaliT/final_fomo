class Post < ActiveRecord::Base
    acts_as_likeable
    attr_accessible :content, :user_id, :avatar
    belongs_to :user
    has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "avatar/missing.jpg"
    has_many :comments
    include PublicActivity::Model
    tracked owner: ->(controller, model) { controller && controller.current_user }
end
