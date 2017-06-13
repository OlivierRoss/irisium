json.extract! evenement, :id, :nom, :description, :image, :date, :lieu, :created_at, :updated_at
json.url evenement_url(evenement, format: :json)
