class CreateMenus < ActiveRecord::Migration[6.1]
  def change
    create_table :menus do |t|
      t.string :label
      t.text :url

      t.timestamps
    end
  end
end
