{% if theme.waline.enable %}
<script type="module">
  import { init } from 'https://unpkg.com/@waline/client@v2/dist/waline.mjs'

  let opt = {
      el: '#waline',
      serverURL: '{{ theme.waline.serverURL }}',
      placeholder: '{{ theme.waline.placeholder }}',
      emoji: [
        'https://unpkg.com/@waline/emojis@1.1.0/weibo',
        'https://unpkg.com/@waline/emojis@1.1.0/bilibili',
      ],
  }
    
  document.addEventListener("DOMContentLoaded", function(event) {
    init(opt)
  })

  document.addEventListener('pjax:complete', function (){
    init(opt)
  })

</script>
{% endif %}