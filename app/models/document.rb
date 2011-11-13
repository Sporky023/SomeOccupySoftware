class Document < ActiveRecord::Base

  has_many :chunks
  
  def tag_list
    chunks.map(&:tags).flatten.uniq.map(&:name).join(', ')
  end

end
