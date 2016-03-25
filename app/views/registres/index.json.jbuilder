json.array!(@registres) do |registre|
  json.extract! registre, :id, :motif, :date, :origine, :destination, :distance, :user_id
  json.url registre_url(registre, format: :json)
end
