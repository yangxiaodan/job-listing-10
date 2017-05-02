class Job < ApplicationRecord
has_many :resumes

  validates :title, presence: true
  
  validates :salary, presence: true
  validates :salary, numericality: { greater_than: 0}

  scope :published, -> { where(is_hidden: false) }

end
