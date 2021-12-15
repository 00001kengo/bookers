class List < ApplicationRecord

  validates :title, presence: {message: "can't be blank"}
  validates :body, presence: {message: "can't be blank"}

end
