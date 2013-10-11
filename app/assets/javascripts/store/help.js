function addToFavorite() {
  var ctrl = (navigator.userAgent.toLowerCase()).indexOf('mac') != -1 ? 'Command/Cmd' : 'CTRL';
  if (document.all) {
    window.external.addFavorite('http://www.80pei.com/', '帮你配');
  } else { 
    if (window.sidebar) {
      window.sidebar.addPanel('帮你配', 'http://www.80pei.com/', "");
    } else {
      alert('您可以尝试通过快捷键' + ctrl + ' + D 加入到收藏夹~')
    }
  }
}
