STELEGRAF_VERSION: 1.3.5-1                                                                                                                       
SINFLUXDB_PASSWORD: '}L6WP&H8Vr9!&K&_'                                                                                                           
SINFLUXDB_USER: insync_asg                                                                                                                       
SINFLUXDB_RP: 1y
SINFLUXDB_URL: '["https://influx-insync.druva.com"]'
SINFLUXDB_ROLE: insync-asg
SINFLUXDB_DBNAME: insync_asg
REGION: {{salt['cmd.run']('curl -s http://169.254.169.254/latest/meta-data/placement/availability-zone/')}}
