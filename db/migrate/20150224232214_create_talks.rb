class CreateTalks < ActiveRecord::Migration
  def change
    create_table :talks do |t|
      t.string :speaker
      t.string :topic
      t.date :date
      t.time :time
    end
  end
end
