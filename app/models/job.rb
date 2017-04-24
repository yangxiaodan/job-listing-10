class Job < ApplicationRecord
has_many :resumes

  validates :title, presence: true
  validates :company, presence: true
  validates :city, presence: true
  validates :salary, presence: true
  validates :salary, numericality: { greater_than: 0}

  scope :published, -> { where(is_hidden: false) }

end
