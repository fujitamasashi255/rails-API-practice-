class ArticleSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :contents, :status
  belongs_to :user
end
