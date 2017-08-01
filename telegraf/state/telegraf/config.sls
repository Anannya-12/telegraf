include:
  - .service

/etc/telegraf/telegraf.conf:
  file:
    - managed
    - source: salt://telegraf/templates/telegraf.conf.jinja
    - template: jinja

{% if grains['os'] == 'Ubuntu' %}
replace_telegraf_user:
  file.replace:
    - name: /etc/init.d/telegraf
    - pattern: |
        USER=telegraf
        GROUP=telegraf
    - repl: |
        USER=root
        GROUP=root
{% endif %}


