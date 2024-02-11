actor Main
  fun hello(env: Env): None =>
    env.out.print("Hello World!")

  new create(env: Env) =>
    hello(env)
