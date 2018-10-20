# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the endpoint
config :island_interface, IslandInterfaceWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "5lw2BYhO93l297t3yPlpb40Kaa+AW2Z/9UKCde5OBVPueVkvOG1uA9vdaIBoMqMI",
  render_errors: [view: IslandInterfaceWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: IslandInterface.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
