require "bundler/setup"
require "rage"
require "active_record"
Bundler.require(*Rage.groups)

require "rage/all"

Rage.configure do
end

require "rage/setup"
