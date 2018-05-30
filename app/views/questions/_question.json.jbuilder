json.extract! question, :id, :title, :type, :survey_id, :created_at, :updated_at
json.url question_url(question, format: :json)
