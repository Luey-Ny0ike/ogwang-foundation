class ProjectCategory < ApplicationRecord
  has_many :projects

  def name_with_state
"#{name}"
end
end
