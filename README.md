ringserver-formula
==================
Salt states for installing and running ringservers

States
------

### ringserver

Currently just runs the `install` and `config` states for now.

### ringserver.install

Installs ringserver software by downloading tarball from a URL, extracting, and then building the executable using `make`. All of these actions can be controlled by pillar settings, see `map.jinja` for the defaults and `pillar.example` for a quick custom example.

### ringserver.config

Installs one `ring.conf` formatted file to a location with desired parameters. File path and contents can be set with a pillar called `ring_conf`. See `map.jinja` for details.

Future implementations may break this, by allowing for multiple ringserver instances. In this case the `ring_conf` would likely move from a dict to a list of dicts, and `config` would install each one.

### ringserver.service

NOT IMPLEMENTED!!

State to install, enable and run a ringserver config instance as a supervisor service, Coming soon. (Not 100% tested).


License
-------
GPL - add disclaimer

