Role Name
=========

Fancy user profile with:

- zsh
- vim
- emacs


Role Variables
--------------

A description of the settable variables for this role should go here, including any variables that are in defaults/main.yml, vars/main.yml, and any variables that can/should be set via parameters to the role. Any variables that are read from other roles and/or the global scope (ie. hostvars, group vars, etc.) should be mentioned here as well.

Example Playbook
----------------

Add `requirements.yaml`

    - src: cybergrind.fan


Install with `ansible-galaxy install --force -r requirements.yml`


Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

     - hosts: '{{ to }}'
       become: no
       roles:
         - role: cybergrind.fan
           vars:
             user: custom_user
             install_docker: true
             has_docker: true
             architecture: amd64  # can be arm64
             authorized_keys:
               - files/cybergrind.pub
             # go to ~/.config/environment.sh that will be autoloaded
             env_vars:
               VAR1: VALUE1
             group_vars:
               VAR2: VALUE2
             host_vars:
               VAR3: VALUE2


Deploy package
--------------

`ansible-galaxy role import --token=$TOKEN cybergrind fan-ansible`

License
-------

MIT
