class Book < ApplicationRecord
	belongs_to :user

	validates :title, presence: true
	validates :body, presence: true, length: { in: 1..200}
	#いいね
	 has_many :favorites, dependent: :destroy
end
