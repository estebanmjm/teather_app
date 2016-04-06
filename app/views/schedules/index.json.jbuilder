json.array!(@schedules) do |schedule|
  json.extract! schedule, :id, :initial_day, :last_day, :play_id
  json.url schedule_url(schedule, format: :json)
end
