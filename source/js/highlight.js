/* double click */
for (var pres = document.querySelectorAll("pre,code,kbd,blockquote,td"), i = 0; i < pres.length; i++) pres[i].addEventListener("dblclick", function() {
  var e = getSelection(),
      t = document.createRange();
  t.selectNodeContents(this), e.removeAllRanges(), e.addRange(t)
}, !1);