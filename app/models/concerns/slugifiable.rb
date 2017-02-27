module Slugifiable

  module ClassMethods
    def find_by_slug(slug_text)
      self.all.find do |object|
        object.slug == slug_text
      end
    end
  end

  module InstanceMethods
    def slug
      self.name.gsub(' ', '-').downcase
    end
  end

end
