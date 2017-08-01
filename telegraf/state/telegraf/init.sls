{% if pillar.get('STELEGRAF_VERSION') %}

include:
  - .install
  - .config
  - .service

extend:
  {% if grains['os'] == 'Ubuntu' %}
    telegraf:
      service:
        - reload: True
        - watch:
          - file: /etc/telegraf/telegraf.conf
          - file: replace_telegraf_user

  {% elif grains['os'] == 'RedHat' %}
    telegraf:
      service:
        - reload: True
        - watch:
          - file: /etc/telegraf/telegraf.conf
  {% endif %}
{% endif %}
