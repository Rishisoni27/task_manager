class Task < ApplicationRecord
  # callbacks 
  before_validation :set_default_status
  before_save :formate_title
  after_create :log_creation
  after_destroy :log_delete

  # Validations 
  validates :title, presence: true ,length: {minimum:3},uniqueness: true
  # validates :title, length: {minimum:3}
  validates :description, presence: true
  validates :status, presence: true
  # ,inclusion: {in: %w[pending , compleated]}
  # ya to status pending ho ga ya Compleated
  
  private 
   def set_default_status
    self.status ||= "pending"
   end

   def format_title
    self.title = title.strip.capitalize
   end 

   def log_creation
    puts "Task '#{title}' create successfully"
   end 
   
   def log_delete
    puts "task '#{title}' deleted   "
   end 

end
