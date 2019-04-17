var loginOutJS = {
	/**
	 * 退出
	 */
	loginOut : function(path) {
		$.ajax({
			url : path + "/loginOut",
			type : "POST",
			contentType : "application/x-www-form-urlencoded; charset=utf-8",
			success : function(data) {
				var obj = JSON.parse(data);
				if (obj.code == 100) {
					alert(obj.msg);
				} else if (obj.code == 200) {
					window.location.href = path + "/system/jsp/index.jsp";
				}
			},
			error : function(data) {}
		});
	}
}