class CreateAvis < ActiveRecord::Migration[7.0]
  def change
    create_table :avis do |t|
      t.string :name
      t.string :age

      t.timestamps
    end
  end
end
