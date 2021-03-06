class CreateCourses < ActiveRecord::Migration[5.1]
  def change
    create_table :courses do |t|
      t.string :name
      t.string :prerequisite
      t.text :description
      t.references :category, foreign_key: true
      t.references :location, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
