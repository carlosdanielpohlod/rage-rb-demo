if Post.count.zero?
  now = Time.now.utc
  Post.create!([
    {
      title: "rage.rb: Fiber-based concurrency",
      body: "rage.rb uses Fibers to handle concurrent I/O without blocking the thread. Hundreds of requests can be in-flight simultaneously on a single thread.",
      created_at: now
    },
    {
      title: "ActiveRecord standalone with rage.rb",
      body: "You can use ActiveRecord outside of Rails by calling establish_connection directly. No migrations needed for a demo — define the schema inline at boot.",
      created_at: now
    },
    {
      title: "Why fiber-based servers are fast",
      body: "Traditional thread-based servers block on I/O waits. Fiber-based servers yield control during those waits, letting other requests proceed without the overhead of extra threads.",
      created_at: now
    }
  ])
end
