class ChangeColumnDescriptionToHeadline < ActiveRecord::Migration
  def up
  	rename_column :pins, :description, :headline
  end

  def down
  end
end
