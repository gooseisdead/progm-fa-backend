class User < ApplicationRecord
    has_one :team
    has_many :bids
end
