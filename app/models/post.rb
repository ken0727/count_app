class Post < ApplicationRecord

  has_one_attached :image

    def self.search(search)
      if search
        Post.where(['content LIKE ?', "%#{search}%"])
      else
        Post.all
      end
    end

    

end
