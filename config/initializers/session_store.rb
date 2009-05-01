# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_fbRailsMag_session',
  :secret      => 'a332100b4a5b848c095bf32b21efdb9a583785b23ddd63841768a2b90b209a933bf2888b2883ae5f8e95c17d45162a4273c773430737a5e87df5df8d2531d958'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
