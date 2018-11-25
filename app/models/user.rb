class User < ActiveRecord::Base
    VALID_MOBILE_NUMBER = /\A010\-([1-9]{1})([0-9]{3})\-([0-9]{4})\z/
    validates :mobile, presence: true, format: {with: VALID_MOBILE_NUMBER}
end
