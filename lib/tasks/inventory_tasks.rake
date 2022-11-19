namespace :inventory_tasks do
    desc "Count the number of rc cars"
    task :count_cars => [:environment] do
        puts "There are #{RcCar.count} cars in the database"
    end
end