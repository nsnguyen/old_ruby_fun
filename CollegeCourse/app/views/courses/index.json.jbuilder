json.array!(@courses) do |course|
  json.extract! course, :id, :department, :identifier, :teacher, :location
  json.url course_url(course, format: :json)
end
