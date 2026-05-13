Rage.config.after_initialize do
  unless ActiveRecord::Base.connection.table_exists?(:posts)
    ActiveRecord::Schema.define do
      create_table :posts do |t|
        t.string   :title, null: false
        t.text     :body
        t.datetime :created_at
      end
    end
  end

  load Rage.root.join("db/seeds.rb")
end
