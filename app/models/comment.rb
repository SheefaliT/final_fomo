class Comment < ActiveRecord::Base
    # Make comments likeable
    acts_as_likeable

    belongs_to :user
    belongs_to :post
    attr_accessible :content, :post_id
    include PublicActivity::Model
    tracked owner: ->(controller, model) { controller && controller.current_user }
end
