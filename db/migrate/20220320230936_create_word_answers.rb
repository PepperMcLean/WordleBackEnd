class CreateWordAnswers < ActiveRecord::Migration[6.1]
  def change
    create_table :word_answers do |t|
      t.string :word

      t.timestamps
    end
  end
end
