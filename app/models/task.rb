class Task < ActiveRecord::Base
    belongs_to :person
    belongs_to :category

    def self.sort_by_name
        Task.all.order(:name)
    end
end