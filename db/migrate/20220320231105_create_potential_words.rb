class CreatePotentialWords < ActiveRecord::Migration[6.1]
  def change
    create_table :potential_words do |t|
      t.word
      
      t.timestamps
    end
  end
end
