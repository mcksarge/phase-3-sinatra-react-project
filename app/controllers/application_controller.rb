class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

################## People routes ####################

  # GET requests
  get "/people" do
    people = Person.all
    people.to_json
  end

  get "/people/:id" do
    person = Person.find(params[:id])
    person.to_json
  end

  # POST requests
  post "/people" do
    person = Person.create(
      name: params[:name]
    )
    person.to_json
  end

  # DELETE requests
  delete "/people/:id" do
    person = Person.find(params[:id])
    person.destroy
    person.to_json
  end
#####################################

################## Task routes ####################

  # GET requests
  get "/tasks" do
    tasks = Task.all
    tasks.to_json
  end

  get "/tasks/alpha" do
    task = Task.sort_by_name
    task.to_json
  end

  get "/tasks/date" do
    task = Task.sort_by_date
    task.to_json
  end

  # POST requests
  post "/tasks" do
    task = Task.create(
      name: params[:name],
      category_id: params[:category],
      person_id: params[:person]
    )
    task.to_json
  end

  # DELETE requests
  delete "/tasks/:id" do
    task = Task.find(params[:id])
    task.destroy
    task.to_json
  end

  # PATCH requests
  patch "/tasks/:id" do
    task = Task.find(params[:id])
    task.update(
      person_id: params[:person_id]
    )
    task.to_json
  end

################## Category routes ####################

  # GET requests
  get "/categories" do
    categories = Category.all
    categories.to_json
  end

end
