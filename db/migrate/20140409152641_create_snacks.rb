class CreateSnacks < ActiveRecord::Migration
  def change
    create_table :snacks do |t|
      t.string :description

      t.timestamps
    end
  end
end
