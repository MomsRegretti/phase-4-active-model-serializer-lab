class PostSerializer < ActiveModel::Serializer
  attributes :title,:content, :author, :short_content, :tags
  has_many :tags

  def short_content
    c1 = self.object.content[0...40]
    c1 + "..."
  end
end
