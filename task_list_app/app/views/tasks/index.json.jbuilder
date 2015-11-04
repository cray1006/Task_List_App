json.array!(@tasks) do |task|
  json.extract! task, :id, :Title, :Description, :Priority, :Due_Date, :Is_Completed_Toggle
  json.url task_url(task, format: :json)
end
