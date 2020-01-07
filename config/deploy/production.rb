# server-based syntax
# ======================
# Defines a single server with a list of roles and multiple properties.
# You can define all roles on a single server, or split them:

# server "example.com", user: "deploy", roles: %w{app db web}, my_property: :my_value
# server "example.com", user: "deploy", roles: %w{app web}, other_property: :other_value
# server "db.example.com", user: "deploy", roles: %w{db}



# role-based syntax
# ==================

# Defines a role with one or multiple servers. The primary server in each
# group is considered to be the first unless any hosts have the primary
# property set. Specify the username and a domain or IP for the server.
# Don't use `:all`, it's a meta role.

# role :app, %w{deploy@example.com}, my_property: :my_value
# role :web, %w{user1@primary.com user2@additional.com}, other_property: :other_value
# role :db,  %w{deploy@example.com}



# Configuration
# =============
# You can set any configuration variable like in config/deploy.rb
# These variables are then only loaded and set in this stage.
# For available Capistrano configuration variables see the documentation page.
# http://capistranorb.com/documentation/getting-started/configuration/
# Feel free to add new variables to customise your setup.



# Custom SSH Options
# ==================
# You may pass any option but keep in mind that net/ssh understands a
# limited set of options, consult the Net::SSH documentation.
# http://net-ssh.github.io/net-ssh/classes/Net/SSH.html#method-c-start
#
# Global options
# --------------
#  set :ssh_options, {
#    keys: %w(AAAAB3NzaC1yc2EAAAADAQABAAACAQDn3Nfws/214ds7zn4VO5Av0II0p/7q1k1y9sZWBBW+BhTt5+FeicaAXA6DNzUwQwwSnK4TasZVtIz0jbG8PllKT7oUQI3hJDgUCYclUmnmQxHlMi3OzkuLibgwVv7dS0bJumL8DD5MC3m9zR1itQ1ZYBNv8U9Vb42fzRnczUXLCUnCCwDRp8Ty9t7y08dQ8jWYDEzf/T6qzEuOBZ23EMHJO7dNa1qZJk9ZHyM6XID6UbEl2SeZ0/Mb6RFNLi076M9bl9nLNQ9oJz/ZLRiDN0olpcyLO4cc5dIVuZPcQPzY1W6sPLjBs4y/GOey9jp/zhbNci9DSko8YN5fnuGXKHxJc6lh2C0dzWEb1oxZBmXsELw65xlkm7fBUWcr0jMf+XSTAOKwYxOmbaNvfMC28Qqop2Jx5xdgIVgrJGYN+bO8IFWD+PljxwIi0df22MP/ydLSHtBtsMrYGi2HQV0v9T5w0qihZEzihfj1fqYMS9l/srrvnHPyg8Woh/GMTCWjOSNviH5plTIhnybTvx4qzc7tRNwU/v9evakv7yuGjwvuJjIqIqmRHLugTm1P0ofXMmov5T01Ewa2/GWotibRpfq0SY5cpD/ww7OySNfxl1NOxmETtMOFVq1rrPwouO+kfitsChk3askoskK84yFXrm14Gp2wVtlfD4tbZfTRMuPY4w== 82ecd828b223404f95d2cbfd9099e04d@cloud9.amazon.com),
#    forward_agent: false,
#    auth_methods: %w(password)
#  }
#
# The server-based syntax can be used to override options:
# ------------------------------------
# server "3.113.216.214",
#   user: "shusaku",
#   roles: %w{web db app},
#   ssh_options: {
#     user: "user_name", # overrides user setting above
#     keys: %w(AAAAB3NzaC1yc2EAAAADAQABAAACAQDn3Nfws/214ds7zn4VO5Av0II0p/7q1k1y9sZWBBW+BhTt5+FeicaAXA6DNzUwQwwSnK4TasZVtIz0jbG8PllKT7oUQI3hJDgUCYclUmnmQxHlMi3OzkuLibgwVv7dS0bJumL8DD5MC3m9zR1itQ1ZYBNv8U9Vb42fzRnczUXLCUnCCwDRp8Ty9t7y08dQ8jWYDEzf/T6qzEuOBZ23EMHJO7dNa1qZJk9ZHyM6XID6UbEl2SeZ0/Mb6RFNLi076M9bl9nLNQ9oJz/ZLRiDN0olpcyLO4cc5dIVuZPcQPzY1W6sPLjBs4y/GOey9jp/zhbNci9DSko8YN5fnuGXKHxJc6lh2C0dzWEb1oxZBmXsELw65xlkm7fBUWcr0jMf+XSTAOKwYxOmbaNvfMC28Qqop2Jx5xdgIVgrJGYN+bO8IFWD+PljxwIi0df22MP/ydLSHtBtsMrYGi2HQV0v9T5w0qihZEzihfj1fqYMS9l/srrvnHPyg8Woh/GMTCWjOSNviH5plTIhnybTvx4qzc7tRNwU/v9evakv7yuGjwvuJjIqIqmRHLugTm1P0ofXMmov5T01Ewa2/GWotibRpfq0SY5cpD/ww7OySNfxl1NOxmETtMOFVq1rrPwouO+kfitsChk3askoskK84yFXrm14Gp2wVtlfD4tbZfTRMuPY4w== 82ecd828b223404f95d2cbfd9099e04d@cloud9.amazon.com),
#     forward_agent: false,
#     auth_methods: %w(publickey password)
#     # password: "please use keys"
#   }
