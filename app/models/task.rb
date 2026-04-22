class Task < ApplicationRecord
  validates :title, presence: true ,length: {minimum:3},uniqueness: true
  # validates :title, length: {minimum:3}
  validates :description, presence: true
  validates :status, presence: true
  # ,inclusion: {in: %w[pending , compleated]}
  # ya to status pending ho ga ya Compleated 
end
