
install-vim:
  pkg.installed :
    {% if grains['os'] == 'CentOS' %}
    - name: vim-enhanced 
    {% elif grains['os'] == 'Debian' %}
    - name: vim
    - /etc/vim/vimrc:
      file.managed:
        - source: salt://files/debian/etc/vim/vimrc
        - user: root
        - group: root
        - mode: '644'
        - force: True
    {% endif %}
