class CreatePlans < ActiveRecord::Migration
  def change
    create_table :plans do |t|
      t.string :headline

      t.timestamps
    end
  end
end
