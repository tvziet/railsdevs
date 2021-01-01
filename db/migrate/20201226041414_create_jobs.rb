class CreateJobs < ActiveRecord::Migration[6.0]
  def change
    create_table :jobs do |t|
      t.string :title
      t.string :link_to_apply
      t.string :company_name
      t.string :company_website
      t.string :headquarters
      t.string :compensation_range
      t.string :estimated_hours
      t.string :upsell_type
      t.string :years_of_experience
      t.integer :status, default: 0
      t.integer :compensation_type, default: 0
      t.integer :price
      t.datetime :published_at
      t.datetime :featured_until
      t.boolean :featured, default: false
      t.boolean :remote, default: false
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
