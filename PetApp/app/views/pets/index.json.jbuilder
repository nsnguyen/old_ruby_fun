json.array!(@pets) do |pet|
  json.extract! pet, :id, :petname, :owner, :petwalker, :apptdate, :apptlength
  json.url pet_url(pet, format: :json)
end
