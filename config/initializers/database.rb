Rage.config.after_initialize do
  ActiveRecord::MigrationContext.new("db/migrate").migrate
  load Rage.root.join("db/seeds.rb")
end
