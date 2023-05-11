<div class='search__blur'></div>
<div class='search'>
  <div class='search__keyword'>
    <i class='if i-search search__keyword--icon'></i>
    <input type='text' id='search-input' name='search-input' placeholder='搜索'>
    <i class='if i-times search__keyword--clear'></i>
  </div>
  <div class='search__results' id='search__results'>
  </div>
</div>

<script>
$(function () {
  searchFunc("{{ config.root }}" + "search.json", 'search-input', 'search__results');

  let btnSearch = document.querySelector('#search')
  let sBlur = document.querySelector('.search__blur')
  let search = document.querySelector('.search')
  let clear = document.querySelector('.search__keyword--clear')
  let sText = document.querySelector('#search-input')

  clear.onclick = function () {
    sText.value = ''
  }

  btnSearch.onclick = function () {
    if (sBlur.classList.contains('show')) {
      sBlur.classList.remove('show')
      search.classList.remove('show')
    } else {
      sBlur.classList.add('show')
      search.classList.add('show')    
    }
  }

  sBlur.onclick = function () {
    if (sBlur.classList.contains('show')) {
      sBlur.classList.remove('show')
      search.classList.remove('show')
    } else {
      sBlur.classList.add('show')
      search.classList.add('show')    
    }
  }

});
</script>