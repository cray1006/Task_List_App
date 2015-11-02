json.array!(@tasks) do |task|
  json.extract! task, :id, :Title, :Dercription, :Priority, :DueDate, :isCompletedToggle
  json.url task_url(task, format: :json)
end
