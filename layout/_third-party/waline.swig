{% if theme.waline.enable %}
<div id="waline"></div>
<script>
  const waline = Waline({
      el: '#waline',
      serverURL: '{{ theme.waline.serverURL }}',
      avatar: '{{ theme.waline.avatar }}',
      placeholder: '{{ theme.waline.placeholder }}',
      emoji: [
        'https://cdn.jsdelivr.net/gh/walinejs/emojis@1.0.0/weibo',
        'https://cdn.jsdelivr.net/gh/walinejs/emojis@1.0.0/bilibili',
      ],
      path: window.location.pathname.replace(/\/$/,'')
  })
    
  document.addEventListener("DOMContentLoaded", function(event) {
      waline.update()
  })

  document.addEventListener('pjax:complete', function (){
      waline.update()
  })
</script>
{% endif %}