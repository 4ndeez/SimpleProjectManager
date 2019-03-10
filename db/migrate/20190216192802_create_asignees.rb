class CreateAsignees < ActiveRecord::Migration[5.2]
  def change
    create_table :asignees do |t|
      t.references :project, foreign_key: true
      t.references :task, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
