class CreateCars < ActiveRecord::Migration
  def up
    create_table 'cars' do |t|
      t.string 'make'
      t.string 'model'
      t.string 'year'
      t.string 'body'
      t.string 'avg_price'
      t.text 'comments'
      t.timestamps
    end
  end

  def down
    drop_table 'cars' # deletes the whole table and all its data!
  end
end
