class CreatePartners < ActiveRecord::Migration[6.0]
  def change
    create_table :partners do |t|
      t.string :name
      t.string :referral_source
      t.integer :age
      t.string :work
      t.string :hobby
      t.string :holiday
      t.string :income
      t.string :allergy
      t.string :like
      t.string :not_fit
      t.string :note
      t.string :firstdate_detail
      t.string :firstdate_appearance
      t.string :firstdate_talk
      t.string :firstdate_feeling
      t.string :seconddate_detail
      t.string :seconddate_appearance
      t.string :seconddate_talk
      t.string :seconddate_feeling
      t.string :thirddate_detail
      t.string :thirddate_appearance
      t.string :thirddate_talk
      t.string :thirddate_feeling
      t.references :user


      t.timestamps
    end
  end
end
