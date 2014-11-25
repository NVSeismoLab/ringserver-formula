#
# Salt state to install, configure, run ringserver
#

{% from "ringserver/map.jinja" import ringserver with context %}

#
# Ensure program is built/installed
#
ringserver:
  archive.extracted:
    - name: {{ ringserver.install }}/
    - source: {{ ringserver.url }}
    - source_hash: {{ ringserver.hash }}
    - archive_format: tar
    - if_missing: {{ ringserver.install }}/{{ ringserver.dir }}/

  cmd.wait:
    - name: make all
    - cwd: {{ ringserver.install }}/{{ ringserver.dir }}
    - creates: {{ ringserver.install }}/{{ ringserver.dir }}/ringserver
    - watch: 
      - archive: ringserver

