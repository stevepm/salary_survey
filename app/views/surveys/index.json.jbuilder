json.array!(@surveys) do |survey|
  json.extract! survey, :id, :company_name, :expires_at
  json.url survey_url(survey, format: :json)
end
