json.extract! assessment, :id, :assessment_id, :training_id, :trainer_id, :unit_id, :learner_id, :assess_date, :poe, :rpl, :results, :moderated, :attended, :formative_results, :formative_attempts, :summative_results, :summative_attempts, :poe_not_submit_reason, :reason_not_completed, :assesor_recommendations, :mentor_notes, :moderated_ext, :created_at, :updated_at
json.url assessment_url(assessment, format: :json)