class Todo < ApplicationRecord
  validates :title, presence: true

  def completed?
    completed_at?
  end
end
