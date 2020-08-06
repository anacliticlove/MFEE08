window.addEventListener('load', function() {
    // tab切換部分
    var tab_list = document.querySelector('.tab_list');
    var lis = tab_list.querySelectorAll('li');
    var items = document.querySelectorAll('.tab_con');
    for (var i = 0; i < lis.length; i++) {
        lis[i].setAttribute('index', i);
        lis[i].onclick = function() {
            for (var i = 0; i < lis.length; i++) {
                lis[i].className = '';
            }
            this.className = 'current';
            var index = this.getAttribute('index');
            for (var i = 0; i < items.length; i++) {
                items[i].style.display = 'none';
            }
            items[index].style.display = 'block';
        }
    }
    // 評分長條圖
})