class CreateCollects < ActiveRecord::Migration
  def change
    create_table :collects do |t|

      t.timestamps
    end
  end
end
