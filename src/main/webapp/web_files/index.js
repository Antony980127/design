
var click = false;
var indexJS = {


	/**
	 * 发表评论
	 */
	sendCommentContent : function(path, comment, account, newsID) {
		$.ajax({
			url : path + "/sendComment",
			type : "POST",
			contentType : "application/x-www-form-urlencoded; charset=utf-8",
			data : {
				"comment" : comment,
				"account" : account,
				"newsID" : newsID
			},
			success : function(data) {
				var obj = JSON.parse(data);
				if (obj.code == 100) {
					alert(obj.msg);
				} else if (obj.code == 200) { //评论成功后
					alert(obj.msg);
					window.location.href = path + "/system/jsp/index.jsp";
				}
			},
			error : function(data) {}
		});
	},

	newsDetail : function(path, newID) {
		window.location.href = path + "/newsDetail?newID=" + newID;
	},

	fabulous : function(path, newID, fabulousNum) {
		var name = "#fabulous" + newID;
		var numName = "#fabulousNum" + newID;
		$(name).attr("src", path + "/system/img/icon/点赞.png");
		fabulousNum = fabulousNum + 1;
		$(numName).text(fabulousNum + "");
		$(name).attr('disabled', true);
		$.ajax({
			url : path + "/fabulous",
			type : "POST",
			contentType : "application/x-www-form-urlencoded; charset=utf-8",
			data : {
				"fabulousNum" : fabulousNum,
				"newID" : newID
			},
			success : function(data) {
				var obj = JSON.parse(data);
				if (obj.code == 100) {
					alert(obj.msg);
				} else if (obj.code == 200) { //评论成功后
					click = true;
				}
			},
			error : function(data) {}
		});
	},
	collection : function(path, newId, account) {
		var name = "#collection" + newId;
		$(name).attr("src", path + "/system/img/icon/收 藏.png");
		$("#collection").attr('disabled', true);
		$.ajax({
			url : path + "/collection",
			type : "POST",
			contentType : "application/x-www-form-urlencoded; charset=utf-8",
			data : {
				"newId" : newId,
				"account" : account
			},
			success : function(data) {
				var obj = JSON.parse(data);
				if (obj.code == 100) {
					alert(obj.msg);
				} else if (obj.code == 200) { //评论成功后
					click = true;
					alert(obj.msg);
				}
			},
			error : function(data) {}
		});
	}
}