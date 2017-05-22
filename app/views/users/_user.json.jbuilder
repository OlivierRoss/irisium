json.extract! user, :id, :prenom, :nom, :age, :courriel, :motdepasse, :salt, :created_at, :updated_at
json.url user_url(user, format: :json)
