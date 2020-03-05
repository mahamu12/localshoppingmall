$(function(){
	$("#insertCart").click(function(){ //장바구니 담기 버튼 클릭
		var buyer = $("#buyer").val();
		var book_kind = $("#book_kind").val();
		var query = {book_id:$("#book_id").val(),
					 book_count:$("#book_count").val(),
					 book_image:$("#book_image").val(),
					 book_title:$("#book_title").val(),
					 buy_price:$("#buy_price").val(),
					 buyer:buyer
		};
		$.ajax({
			type:"POST",
			url: "/shoppingmall/insertCart.do",
			data: query,
			success : function(data){
				alert("장바구니에 담겼습니다.");
			}
		});
	});
	
	$("#list").click(function(){//목록으로 버튼 클릭
		window.location.href("/shoppingmall/list.do?book_kind=all");
	});
	
	$("#shopMain").click(function(){//메인으로 버튼 클릭
		window.location.href("/shoppingmall/index.do");
	});
	
	$("#writeQna").click(function(){//상품 QnA쓰기 버튼 클릭
		var book_id = $("#book_id").val();
		var book_kind = $("#book_kind").val();
		
		var query = "/shoppingmall/qnaForm.do?book_id="+book_id;
		query += "&book_kind="+book_kind;
		window.location.href(query);
	});
});

function edit(editBtn){//수정 버튼 클릭
	
}























