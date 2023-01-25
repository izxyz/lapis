import push, pop from require "lapis.environment"
import set_backend from require "lapis.db.mysql"

setup_db = (opts) ->
  push "test", {
    mysql: {
      user: "root"
      database: "lapis_test"
    }
  }

  set_backend "luasql"

teardown_db = ->
  pop!

{:setup_db, :teardown_db}

