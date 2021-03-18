<script>

load_copy_button = function () {

  let badge = document.getElementsByClassName('code-badge-pre').length
  
  if (!badge) {
    // var pres = document.querySelectorAll("pre>code");
    // for (var i = 0; i < pres.length; i++) {
    // 	hljs.highlightBlock(pres[i]);
    // }

    /* double click */
    for (var pres = document.querySelectorAll("pre,code,kbd,blockquote,td"), i = 0; i < pres.length; i++) pres[i].addEventListener("dblclick", function() {
        var e = getSelection(),
            t = document.createRange();
        t.selectNodeContents(this), e.removeAllRanges(), e.addRange(t)
    }, !1);

    var options = {
      // contentSelector: ".highlight table .code",
      loadDelay:0,
      copyIconClass: "if i-copy",
      checkIconClass: "if i-success",
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