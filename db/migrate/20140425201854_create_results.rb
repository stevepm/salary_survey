class CreateResults < ActiveRecord::Migration
  def change
    create_table :results do |t|
      t.integer :survey_id
      t.integer :user_id
      t.integer :salary

      t.timestamps
    end
  end
end
