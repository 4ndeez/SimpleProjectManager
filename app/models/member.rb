class Member < ApplicationRecord
  belongs_to :user
  belongs_to :project, optional: true
  belongs_to :group, optional: true
end
