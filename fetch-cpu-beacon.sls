git:
  pkg:
    - installed

clone-cpu-beacon:
  git.latest:
    - name: https://github.com/dincamihai/cpu_beacon.git
    - rev: master
    - target: /tmp/cpu_beacon
    - require:
      - pkg: git

/srv/salt/_beacons/cpu.py:
  file.symlink:
    - target: /tmp/cpu_beacon/cpu.py
    - force: true
    - require:
        - git: clone-cpu-beacon
