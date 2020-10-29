class Customer
    attr_accessor :name, :age 

    @@all = []

    def initialize(name, age)
        @name = name 
        @age = age 
        @@all << self 
    end

    def self.all 
        @@all 
    end 

    def new_meal(waiter, total, tip=0)
        Meal.new(waiter, self, total, tip)
    end 

    #consult the meal class from the  customer class
    def meals
        Meal.all.select { |meal| meal.customer == self}
    end 

    def waiters 
        meals.map { |meal_instance| meal_instance.waiter}
    end 
    


end