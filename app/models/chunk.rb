class Chunk < ActiveRecord::Base
  belongs_to :document
  acts_as_taggable
  #acts_as_taggable_on :tags
  
  def text
    document.body.slice(first_char_at .. last_char_at)
  end
  
end
