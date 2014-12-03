class Quiz < ActiveRecord::Base
	belongs_to :video
	has_many :questions
	has_many :answers, through: :questions

	accepts_nested_attributes_for :questions, :reject_if => lambda { |a| a[:content].blank? }, allow_destroy: true
end
