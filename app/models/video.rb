class Video < ActiveRecord::Base
	belongs_to :section
	has_one :quiz
	accepts_nested_attributes_for :quiz

	def previous
    Video.where("section_id = ? AND id < ?", self.section.id, self.id).first
  end
  def next
    Video.where("section_id = ? AND id > ?", self.section.id, self.id).first
  end
end
