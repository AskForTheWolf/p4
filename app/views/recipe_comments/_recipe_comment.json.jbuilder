json.extract! recipe_comment, :id, :title, :body, :created_at, :updated_at
json.url recipe_comment_url(recipe_comment, format: :json)
