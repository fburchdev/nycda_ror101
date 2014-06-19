json.array!(@cards) do |card|
  json.extract! card, :id, :user_id, :card_number, :expiration_date, :billing_address
  json.url card_url(card, format: :json)
end
