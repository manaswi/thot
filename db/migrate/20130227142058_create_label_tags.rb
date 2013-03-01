class CreateLabelTags < ActiveRecord::Migration
  def change
    create_table :label_tags do |t|
      t.integer :recipe_id
      t.integer :label_id

      t.timestamps
    end
  end
end
