json.extract! moderation, :id, :moderation_id, :training_id, :trainer_id, :unit_id, :internal_by, :internal_on, :internal_outcome, :internal_recommendation, :external_by, :external_on, :external_outcome, :external_recommendation, :created_at, :updated_at
json.url moderation_url(moderation, format: :json)
