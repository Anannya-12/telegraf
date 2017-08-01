install_telegraf:
  pkg.installed:
    {% if grains['os'] == 'RedHat' %}
      - sources:
        - telegraf: https://dl.influxdata.com/telegraf/releases/telegraf-1.3.5-1.x86_64.rpm
    {% elif grains['os'] == 'Ubuntu' %}
      - sources:
        - telegraf: http://dl.influxdata.com/telegraf/releases/telegraf_{{ pillar.get('STELEGRAF_VERSION', '1.3.5-1') }}_amd64.deb
    {% endif %}
