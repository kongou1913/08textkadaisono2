class PComment < ApplicationRecord
  validates :t_content, presence: true, length: {maximum: 1000 }

  belongs_to :user
  belongs_to :topic
end
