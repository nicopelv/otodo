json.array!(@tasks_lists) do |tasks_list|
  json.extract! tasks_list, :id, :title, :description
  json.url tasks_list_url(tasks_list, format: :json)
end
