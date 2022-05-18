class Task < ActiveRecord::Base
    belongs_to :person
    belongs_to :category

    #Sort tasks by name
    def self.sort_by_name
        Task.all.order(:name)
    end

    #Sort tasks by date
    def self.sort_by_date
        Task.all.order(:created_at)
    end
end