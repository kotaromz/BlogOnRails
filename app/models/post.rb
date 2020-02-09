class Post < ApplicationRecord
  [:title, :context].each do |column|
    validates column, presence: true
  end

  belongs_to :user
end
