class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.datetime :begin_time
      t.datetime :end_time
      t.string :status
      t.references :user, index: true
      t.references :place, index: true

      t.timestamps
    end
  end
end
