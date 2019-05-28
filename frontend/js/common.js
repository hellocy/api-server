var GLOBAL = {};

var options = {
	param: {}
}

GLOBAL.host = '/';
GLOBAL.body = $(".page-current");
GLOBAL.authority = [];
//页面跳转
GLOBAL.go = function(url) {
    if(!url){
        return;
    }
    if(GLOBAL.get('uid') == null){
        location.href = "/login.html";
    }
    options.initPage = null;
    var role = GLOBAL.get('role');
    $.showIndicator();
    GLOBAL.body.empty().load(url, function(e) {
        $.hideIndicator();
        
        var navHtml = '';
        if(role == 0){
           navHtml = '<nav class="bar bar-tab"><a class="tab-item active" href="javascript:" data-url="index.html"><span class="icon icon-home"></span><span class="tab-label">首页</span></a><a class="tab-item" href="javascript:" data-url="session_list.html"><span class="icon icon-settings"></span><span class="tab-label">字画街</span></a><a class="tab-item" href="javascript:" data-url="me.html"><span class="icon icon-me"></span><span class="tab-label">我</span></a></nav>';
        }else{
    	   navHtml = '<nav class="bar bar-tab"><a class="tab-item active" href="javascript:" data-url="index.html"><span class="icon icon-home"></span><span class="tab-label">首页</span></a><a class="tab-item" href="javascript:" data-url="setting.html"><span class="icon icon-settings"></span><span class="tab-label">设置</span></a><a class="tab-item" href="javascript:" data-url="me.html"><span class="icon icon-me"></span><span class="tab-label">我</span></a></nav>';
        }
    	GLOBAL.body.append(navHtml);

    	$("[data-url]").click(function(){
        	var url = $(this).data("url");
        	GLOBAL.go(url);
        })

        $("[data-authority]").each(function(){
            var authId = $(this).attr('data-authority');
            if($.inArray(authId, GLOBAL.authority) >= 0 && !$(this).hasClass("tab")){
                $(this).show();
            }
        })
    	options.initPage && options.initPage();
    });
}

GLOBAL.set = function(key, value){
    $.fn.cookie(key, value, { expires: 2000 });
}

GLOBAL.get = function(key){
    return $.fn.cookie(key);
}

GLOBAL.del = function(key){
    $.fn.cookie(key, null, { expires: -1, path:'/'});
}

GLOBAL.ajax = function(method, url, data, fn){
    $.showIndicator();
    var ajaxTimeout = $.ajax({
        type: method,
        url: url,
        data: data,
        success: function(e){
            $.hideIndicator();
            fn && fn(e);
        },
        cache:false,
        async: true,
        timeout: 15000,
    　　complete: function(XMLHttpRequest, status){ //请求完成后最终执行参数
    　　　　if(status=='timeout'){//超时,status还有success,error等值的情况
                $.hideIndicator();
     　　　　　 ajaxTimeout.abort();
    　　　　　  $.alert("请求超时，请重试！");
    　　　　}
    　　}
    })
}

GLOBAL.quickSort = function(arr) {

　　if (arr.length <= 1) { return arr; }

　　var pivotIndex = Math.floor(arr.length / 2);

　　var pivot = arr.splice(pivotIndex, 1)[0];

　　var left = [];

　　var right = [];

　　for (var i = 0; i < arr.length; i++){

　　　　if (arr[i].count > pivot.count) {

　　　　　　left.push(arr[i]);

　　　　} else {

　　　　　　right.push(arr[i]);

　　　　}

　　}

　　return GLOBAL.quickSort(left).concat([pivot], GLOBAL.quickSort(right));

};

GLOBAL.session = function(key,value, isRemove){
    if(arguments[1] && arguments[1] != 0){
        sessionStorage.setItem(key, JSON.stringify(value));
    } else {
        var result = JSON.parse(sessionStorage.getItem(key));
        if(isRemove){
            sessionStorage.removeItem(key);
        }
        return JSON.parse(result);
    }
}

window.addEventListener('offline', function(){
    $.alert("网络已断开");
});
window.addEventListener('online', function(){
    $.alert("网络已连接");
});