{% if theme.valine.enable %}
<div class='vcomment-toggle' title='评论'><i class='if i-comment'></i></div>
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

  document.getElementsByClassName('vcomment-toggle')[0].onclick = function () {
    let vcomment = document.getElementById('vcomment')
    if ( ('','0','0px').includes(vcomment.style.maxHeight) ) {
      vcomment.style.maxHeight = '999px'
      setTimeout(() => {  vcomment.style.maxHeight = 'max-content' }, 500);
    } else {
      vcomment.style.maxHeight = '0'
    }
  }
</script>
{% endif %}