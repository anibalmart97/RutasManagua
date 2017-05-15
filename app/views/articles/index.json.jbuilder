json.array!(@articles) do |article|
  json.extract! article, :id, :article_title, :article_subtitle, :article_content, :article_date, :section_id
  json.url article_url(article, format: :json)
end
