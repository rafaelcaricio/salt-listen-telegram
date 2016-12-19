python-pip:
  pkg.installed

telegram_bot_lib:
  pip.installed:
    - name: "python-telegram-bot"
    - require:
      - pkg: python-pip

os_required_packages:
  pkg.installed:
    - pkgs:
      - python-virtualenv

/etc/salt/minion.d/minion.conf:
  file.managed:
    - source: salt://files/minion.conf
    - user: root
    - group: root
    - mode: 644
    - template: jinja
    - context:
       token: "<token>"


/etc/salt/minion.d/beacons.conf:
  file.managed:
    - source: salt://files/beacons.conf
    - user: root
    - group: root
    - mode: 644
    - template: jinja
    - context:
       token: "<token>"
