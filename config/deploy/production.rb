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
#    keys: %w(~/.ssh/first_aws_rsa),
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
#     keys: %w(),
#     forward_agent: false,
#     auth_methods: %w(publickey password)
#     # password: "please use keys"
#   }
server '3.113.216.214', user: 'shusaku', roles: %w{app db web}
set :ssh_options, keys: 'WIuJO+0qOHUqu8UZeqFpl5CHXVVpxaORHKVwqwHDsJoSrmo95rkWjgPWQrnOI3wV
RMrV3Y4vn/Cr+RCuVKYg7aKb+8Z2sYiXQpRaddhR2vCUch4YydE4gExJ/dxb1Z36
CjM0IDrn0bQoCxdk8du2oOh+PGirwcYQYTOnqkDkLZEUaK+0ZtIh2aSk2oVVqLZ0
3xN1n1GtG56Qxmy4Kbz72XDMBDrzdID3BP/xOmv6WAXFfM1ozeYY9yFfbSUa87Lk
sjGwL9cwVcaRPCuuA2d+cFDgtVPugsOWmE+CcIw1Epz1g60E3m133T4y9h4HUkNz
CygMIrsqzTNGQGbQLVejr4BxmXCICTqOTOGRMYnD8cNtc9UVo+oAi+KZU1JfjhI/
pgFW3ubpqJFw6LweF8BY5hMbA9fuUY/mjTU3EQ6/ip8AHDXYxcU1NsFK7HOOpDgx
rdLfB5Po59inOZZvFSvXEuUi8LgkXmT16RqTJCdn+ym7dCwowqaMHsXUCgAzHkWh
cEVzG6IFp6GUBc3aemDO9wctwV/cttv1ethYDqt7MLs0ThB62WDoCXAQ9FGNGYjq
qlib78dhIU4XAbbXLe2144yxfNujQ1py+mFK/HVInPQ6W7xi6kRTfvMe9c7Vr9KB
sFQDSIPWneRsxa110IfpJ5b4LXb4nRtxsyw0Hw3DaqZ+z9Uh3ZE1LKASn8nD921G
kjEz8yycXFrVm70dCP4x2BE0uzdm1U7Nsu2F+fzzKd5MP2L/alJOX7yeHZfWrHsk
Er99gti2r916QfFyWvCBJMVOwc1hskEn9HuXXS7wvMrur71xrYoF4o9Q9uAgVoeH
Nq1wdu5sThHMBHqLZYHEUhcNviWExNY7kJK8rUWOjHRnO/5qu+zOiYHn5nOlTptU
Fh5kPGZSttoNAJvhmqkcuii6jL0yPpUdQBeiE0XlCxdhXbEHcvVWjZG5oNeO2jTD
YA6Ms3t85XT2aHhegU9fYXRnZjg2bEbsZbNQDtS6V1PjUUmvLV6pVDxXY4xaAfE1
aVjjk2VWXYwr/9dgzD55NI00ligrRRFcPpB6MsqWmtE11Tk9QAYj/+3ou3v+3PSb
3w595Tv06HQmrn2O9ciFLHCKyhvAoJU8a5M56Gq1H2C+gBa9h7yi9HugwojgePvv
RsuQr/fFZFKccZAd2QRNF6NNXZHXkNlp9V4JUjTmvMH14PF3vt0GeZLQNKXVnYl7
w2//JAc4RZw8WjoqbXIr2/dEZWK9dB1bWZDh3G2HN8gAGBpB3R8vrY1FiKFjGW35
fQsN65RhJJc7kNBZZqpiVzfyE6Dp0Aam0Rf/P10YnlkzlfXi/CF1oA5J/lpSd79E
jC39ZsB8SlGdrVO0uVYHx5YPDjX4dbAlgahZUZBiwTyCo3xMwqP3alJAs9gWfzzG
dyjkiAZgMswD2IE0FZIgVdw9Qo7De5tJsFhfXzLn5rFjoSJeW7J612WejITqFsWJ
l350g2wAgR3vj1husbevp/Dw0fDZFvR9XaE7y2k4OwGf36BoDHZfDlgx5iVgGXt+
TdTzTi7VG2E6dhqd0yb3v2xCUAvtd/YEgEWYypVBDDO4CDmvfOId+nQRK37Lv4Z2'