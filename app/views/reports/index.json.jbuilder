json.array!(@reports) do |report|
  json.extract! report, :id, :user_id, :id_number, :id_type, :country_code, :activity
  json.url report_url(report, format: :json)
end
