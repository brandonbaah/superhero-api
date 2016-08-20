class CreateSuperheros < ActiveRecord::Migration
  def change
    create_table :superheros do |t|

      t.string :superhero_name
      t.string :superhero_power

      t.timestamps null: false
    end
  end
end
