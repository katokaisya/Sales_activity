json.array!(@sales_histories) do |sales_history|
  json.extract! sales_history, :id, :activity_time, :customer_id, :sales_category, :sales_achievement, :detail
  json.url sales_history_url(sales_history, format: :json)
end
