class CreateUsertables < ActiveRecord::Migration
  def change
    create_table :usertables do |t|
      t.string :name
      t.text :mood

      t.timestamps
    end
  end
end
