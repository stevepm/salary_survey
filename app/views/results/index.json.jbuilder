json.array!(@results) do |result|
  json.extract! result, :id, :survey_id, :user_id, :salary, :job_title
  json.url result_url(result, format: :json)
end
