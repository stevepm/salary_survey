class CreateSurveys < ActiveRecord::Migration
  def change
    create_table :surveys do |t|
      t.string :company_name
      t.time :expires_at
      t.string :job_title


      t.timestamps
    end
  end
end
