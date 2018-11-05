json.extract! task, :id, :title, :photo, :date, :created_at, :updated_at
json.url task_url(task, format: :json)
