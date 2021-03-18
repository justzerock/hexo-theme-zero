{% if theme.valine.enable %}
<div id="vcomment"></div>
<script>

  load_valine = function () {
    let vcards = document.getElementsByClassName('vcards').length

    if (!vcards) {
      let emojiMaps = {
        {% for key in Object.keys(theme.valine.emojiMaps) %}
          '{{ key }}': '{{ theme.valine.emojiMaps[key] }}',
        {% endfor %}
      }
      new Valine({
          el:'#vcomment',
          appId: '{{ theme.valine.appId }}',
          appKey: '{{ theme.valine.appKey }}',
          avatar: '{{ theme.valine.avatar }}',
          placeholder: '{{ theme.valine.placeholder }}',
          // 这里设置CDN, 默认微博表情CDN
          emojiCDN: '{{ theme.valine.emojiCDN }}', 
          // 表情title和图片映射
          emojiMaps: emojiMaps,
          path: window.location.pathname
      })
    }
  }

  document.addEventListener("DOMContentLoaded", function(event) {
    load_valine()
  })

  document.addEventListener('pjax:complete', function (){
    load_valine()
  })
</script>
{% endif %}