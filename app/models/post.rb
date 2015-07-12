class Post < ActiveRecord::Base
  validates :title, presence: true , format: {with: /\A\d/} 
  before_save :content_upcase
  
  
  before_create do 
    self.content = title if content.blank?
  end 
  
protected
  def content_upcase
    content.try(:upcase!)
  end
end