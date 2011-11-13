class Document < ActiveRecord::Base

  belongs_to :user
  has_many :chunks
  
  validates :user, :presence => true
  
  def tag_list
    chunks.map(&:tags).flatten.uniq.map(&:name).join(', ')
  end

end
