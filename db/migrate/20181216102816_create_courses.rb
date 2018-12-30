class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
      t.string :name
      t.boolean :online, default: false
      t.float :price, default: 0

      t.timestamps
    end
  end
end
