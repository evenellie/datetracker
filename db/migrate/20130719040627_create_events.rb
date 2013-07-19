class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.date :event
      t.text :description

      t.timestamps
    end
  end
end
