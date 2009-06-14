function menudo_search_blur(){
  var f = document.getElementById('menudo_search_field');
  if (f.value == ''){
    f.value = 'Busca'
  }
}

function menudo_search_click(){
  var f = document.getElementById('menudo_search_field');
  if (f.value == 'Busca'){
    f.value = ''
  }
}

function menudo_search(){
  var f=encodeURIComponent(document.getElementById('menudo_search_field').value);
  location.href='/search/'+f;
}
