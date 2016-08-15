class CreateCommenTs < ActiveRecord::Migration
  def change
    create_table :commen_ts do |t|

      t.timestamps null: false
    end
  end
end
