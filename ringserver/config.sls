#
# Salt state to install, configure, run ringserver
#
# NOTES
# -----
# This is only set up to run one instance of ringserver per machine. For
# multiples, one needs to make a sequence of params and run a loop to install 
# multiple config files and supervisor procs.
#
{% from "ringserver/map.jinja" import ring_conf with context %}

{{ ring_conf.name }}:
  file.managed:
    - source: salt://ringserver/files/ring.conf
    - template: jinja
    - defaults:
        RingDirectory: ring
        DataLinkPort: 
          - 16000
    - context: {{ ring_conf.settings }}

