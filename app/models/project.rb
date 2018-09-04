class Project < ApplicationRecord
  belongs_to :project_category

  has_attached_file :cover_photo, styles: { medium: '400x400>', thumb: '100x100>' }, default_url: '/images/:style/missing.png'
  validates_attachment_content_type :cover_photo, content_type: /\Aimage\/.*\z/
end
