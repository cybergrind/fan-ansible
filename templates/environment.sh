# set variables in env_vars
# Global vars
export PATH="$PATH:~/.local/bin"
export LOGSTASH_HOST={{LOGSTASH_HOST}}
export PR_CYAN={{PR_CYAN}}

{% if env_vars is defined %}
# Env vars
{% for key, value in env_vars.items() %}
export {{key}}="{{value}}"
{% endfor %}
{% endif %}

{% if group_vars is defined %}
# Group vars
{% for key, value in group_vars.items() %}
export {{key}}="{{value}}"
{% endfor %}
{% endif %}

{% if host_vars is defined %}
# Host Vars
{% for key, value in host_vars.items() %}
export {{key}}="{{value}}"
{% endfor %}
{% endif %}
