class Task < ApplicationRecord
	belongs_to :project
	has_many :asignees
	has_many :projects, through: :asignees
end
