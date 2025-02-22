class Restaurant
  attr_reader :opening_time, :name, :dishes

  def initialize(opening_time, name, dishes = [])
    @opening_time = opening_time
    @name = name
    @dishes = dishes
  end

  def closing_time(hours)
    close = @opening_time.to_i + hours
    return "#{close}:00"
  end

  def add_dish(dish)
    @dishes << dish
  end

  def open_for_lunch?
    return true if @opening_time.to_i <= 12
    false
  end

  def menu_dish_names
        menu = []
        @dishes.each do |dish|
            menu << dish.upcase
        end
        return menu
    end
end

end
        
