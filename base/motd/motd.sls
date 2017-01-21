/etc/motd:
  file.managed:
    {% if grains['os'] == 'CentOS' %}
        - source: salt://files/centos/etc/motd
        - user: root
        - group: root
        - mode: '644'
        - force: True
    {% elif grains['os'] == 'Debian' %}
        - source: salt://files/debian/etc/motd
        - user: root
        - group: root
        - mode: '644'
        - force: True
    {% endif %}
