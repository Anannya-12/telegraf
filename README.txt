Command to run:  
# config_dir must be static i.e /srv/telegraf/config

salt-call --local --config-dir=/srv/telegraf/config state.apply

