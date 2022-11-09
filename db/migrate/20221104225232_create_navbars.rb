class CreateNavbars < ActiveRecord::Migration[6.1]
  def change
    create_table :navbars do |t|
      t.string :label
      t.text :url

      t.timestamps
    end
  end
end
