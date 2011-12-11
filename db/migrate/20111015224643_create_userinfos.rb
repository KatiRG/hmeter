class CreateUserinfos < ActiveRecord::Migration
  def change
    create_table :userinfos do |t|
      t.string :name
      t.text :mood

      t.timestamps
    end
  end
end
