FileSet {
  Name = "{{item.name}}"
  Include {
    Options {
      signature = MD5
      compression = GZIP
    }
  {% for backup_item in item.backup_paths %}
    File = {{backup_item}}
  {% endfor %}
  }
  Exclude {
{% for exclude_item in item.exclude_paths %}
  File = {{exclude_item}}
{% endfor %}
  }
}
