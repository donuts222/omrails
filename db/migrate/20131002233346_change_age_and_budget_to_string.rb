class ChangeAgeAndBudgetToString < ActiveRecord::Migration
  def up
  	change_column :pins, :budget, :string
  	change_column :pins, :kids_age, :string
  end

  def down
  end
end
