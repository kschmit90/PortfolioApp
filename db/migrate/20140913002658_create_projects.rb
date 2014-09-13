class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.text :description
      t.text :summary
      t.text :github
      t.text :other_url
      t.boolean :featured

      t.timestamps
    end
  end
end
