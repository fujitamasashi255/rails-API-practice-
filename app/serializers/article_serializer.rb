class ArticleSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :contents, :status
end
