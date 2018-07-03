class Pic < ApplicationRecord
  acts_as_votable
  belongs_to :user

  has_attached_file :image, style: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/original/missing.jpg"
  validates_attachment_content_type :image, content_type: /^image\/(png|gif|jpeg|jpg)/
end
