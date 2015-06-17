class Meal < MiniActiveRecord::Model

  self.attribute_names = [:id, :name, :chef_id, :created_at, :updated_at]

  attr_reader :attributes, :old_attributes

  # e.g., Meal.new(id: 1, name: 'Chicken', created_at: '2012-12-01 05:54:30')
#METIMOS +clase+ COMO ARGUMENTO

  def chef
    Chef.where('id = ?', self[:chef_id])
  end

  def chef=(chef)
    self[:chef_id] = chef[:id]
    self.save

    chef
  end
end