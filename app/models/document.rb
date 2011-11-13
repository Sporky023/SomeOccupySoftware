class Document < ActiveRecord::Base

  belongs_to :user
  has_many :chunks
  
  validates :user, :presence => true
  
  def tags
    chunks.map(&:tags).flatten.uniq
  end
  
  def tag_list
    tags.map(&:name).join(', ')
  end

end
