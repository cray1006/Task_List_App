json.array!(@tasks) do |task|
  json.extract! task, :id, :Title, :Description, :Priority, :DueDate, :IsCompleted
  json.url task_url(task, format: :json)
end
