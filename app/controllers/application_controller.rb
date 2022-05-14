class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  get "/people" do
    people = Person.all
    people.to_json
  end

  get "/people/:id" do
    person = Person.find(params[:id])
    person.to_json
  end

  get "/tasks" do
    tasks = Task.all
    tasks.to_json
  end

  post "/tasks" do
    task = Task.create(
      name: params[:name]
    )
    task.to_json
  end

  delete "/tasks/:id" do
    task = Task.find(params[:id])
    task.destroy
    task.to_json
  end

  get "/categories" do
    categories = Category.all
    categories.to_json
  end

end
