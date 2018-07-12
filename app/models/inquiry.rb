class Inquiry < ApplicationRecord
	extend ActiveHash::Associations::ActiveRecordExtensions
	belongs_to_active_hash :inquiry_type

	validates :name, presence: true, length: { maximum: 50 }
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
	validates :email, presence: true, length: { maximum: 255 }, format: { with: VALID_EMAIL_REGEX }
	validates :inquiry_type_id, presence: true, numericality: { greater_than: 0 }
	validates :content, presence: true, length: { maximum: 255 }
end

