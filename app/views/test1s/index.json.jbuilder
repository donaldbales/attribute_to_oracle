json.array!(@test1s) do |test1|
  json.extract! test1, :id, :attribute_binary, :attribute_boolean, :attribute_date, :attribute_datetime, :attribute_decimal, :attribute_float, :attribute_integer, :attribute_references_id, :attribute_string, :attribute_text, :attribute_time
  json.url test1_url(test1, format: :json)
end
