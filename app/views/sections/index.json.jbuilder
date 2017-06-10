json.array!(@sections) do |section|
  json.extract! section, :id, :section_name
  json.url section_url(section, format: :json)
end
