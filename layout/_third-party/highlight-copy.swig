<script>

load_copy_button = function () {

  let lenBadge = document.querySelectorAll('.code-badge-pre').length
  let lenPre = document.querySelectorAll('pre').length
  
  if ( lenPre && !lenBadge ) {
    var pres = document.querySelectorAll("pre>code");
    for (var i = 0; i < pres.length; i++) {
    	hljs.highlightElement(pres[i]);
    }

    var options = {
      contentSelector: ".post__article--content",
      loadDelay:0,
      copyIconClass: "if i-copy",
      checkIconClass: "if i-check",
      onBeforeTextCopied: function(text, codeElement) {
        return text;   
      }
    };
    window.highlightJsBadge(options);
  }

}

document.addEventListener("DOMContentLoaded", (event) => {
  load_copy_button()
});   

document.addEventListener('pjax:complete', function (){
  load_copy_button()
})

</script>