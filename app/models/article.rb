class Article < ApplicationRecord

  has_attached_file :cover_photo, styles: { background: '940x600>',large: '600x600>', medium: '400x400>', thumb: '100x100>' }, default_url: '/images/:style/missing.png'
  validates_attachment_content_type :cover_photo, content_type: /\Aimage\/.*\z/
end
