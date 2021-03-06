$(function(){
	let form = layui.form;
	
	//选择日期组件
	layui.use('laydate', function() {
		var laydate = layui.laydate;
		//执行一个laydate实例
		laydate.render({
			elem: '.timeselect', //指定元素
			type: 'date'
		});
	});
	
	//在线添加电影信息
	form.on('submit(addmovie)', function(data) {
		$.ajax({
			url: '/addmovie',
			type: 'POST',
			dataType: 'JSON',
			data: $('#addmovie').serialize(),
			// data:data.field,
			success: function(result) {
				console.log(result);
				if(confirm("上传成功，待审核")){
					window.location.reload()
				}else{
                  return
				}
				if(result.r="nouser"){
					if(result.r == 'nouser'){
						if(confirm("您还没有登陆,是否去登陆?")){
							window.location.href = '/logsignup/login'
						}else{
							return
						}
					}
				}
				
			}
		});
		return false; //阻止表单跳转。如果需要表单跳转，去掉这段即可。
	});
})

