# since we are not using ActiveRecord in this lab, you write a bare Ruby model (like you did in MOD1)
class Puppy
    attr_accessor :name, :breed, :age

    @@all = []
    def initialize(params)
        @name = params[:name]
        @breed = params[:breed]
        @age = params[:age]
        @@all << self
    end
    def self.all
        @@all
    end
end