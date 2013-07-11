class News < ActiveRecord::Base
  validates :title, presence: true,
            length: { minimum: 5 }
  attr_accessible :text, :title
end
