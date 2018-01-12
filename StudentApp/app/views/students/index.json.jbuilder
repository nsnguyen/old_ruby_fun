json.array!(@students) do |student|
  json.extract! student, :id, :firstname, :lastname, :studentid, :emailaddress
  json.url student_url(student, format: :json)
end
