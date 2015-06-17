class Chef < MiniActiveRecord::Model

  self.attribute_names = [:id, :first_name, :last_name, :email, :phone,
                          :birthday, :created_at, :updated_at]

  attr_reader :attributes, :old_attributes

  # e.g., Chef.new(id: 1, first_name: 'Steve', last_name: 'Rogers', ...)

  def meals
    Meal.where('chef_id = ?', self[:id])
  end

  def add_meals(meals)
    meals.each do |meal|
      meal.chef = self
    end

    meals
  end
end
