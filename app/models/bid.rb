class Bid < ApplicationRecord
  belongs_to :player
  belongs_to :user

  def nice_timestamp_for_tommy_lasorda
    self.created_at.strftime("%m/%d/%Y at %I:%M%p")
  end

end
