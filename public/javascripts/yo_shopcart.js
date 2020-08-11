$(document).ready(function(){
  $("#checkAll").click(function(){
   if($("#checkAll").prop("checked")){//如果全選按鈕有被選擇的話（被選擇是true）
    $("input[name='shopItem']").prop("checked",true);//把所有的核取方框的property都變成勾選
   }else{
    $("input[name='shopItem']").prop("checked",false);//把所有的核取方框的property都取消勾選
   }
  })
 })

$(function () {
  $.get("/guide/shopcart", function (e) {
    cartList = JSON.parse(e);
    console.log(typeof(cartList));
    var cUserId = $("#checkUser").val();
    console.log(cUserId);
    results = [];
    cartList.forEach((memberIdd) => {
      if ((memberIdd.memberId == cUserId)) {
        results.push(memberIdd);
      }
    });
    console.log(typeof(results));
  }).then(() => {
    myCart();
    myPrice();
  });
  function myCart() {
    $("#cartBody").empty();
    // console.log(results);
    // console.log(cartList);
    $.each(results, function (key, obj) {
      $("#cartBody").append(`<div class="col-1 cartCheck" style="">
            <input class="" type="checkbox" name="shopItem" id="">
        </div>
        <div class="col-2 cartBodyPhoto" style="">
            <img class="img-fluid" src="/images/trip/${obj.tripPic1}" alt="I am " style="">
        </div>
        <div class="col-2 cartBodyTitle" style="">
            <a href="#">
                <h6 class="mt">${obj.preTripName}</h6>
            </a>
        </div>
        <div class="col-2" style="">
            <p class="mt">${obj.preTripDate}</p>
            <p class="mt">${obj.preTripTime}</p>
        </div>
        <div class="col-2 " style="">
            <p class="mt">${obj.tripPeo}</p>
        </div>
        <div class="col-1" style="">
            <h6 class="mt">TWD ${obj.preTripPrice}</h6>
        </div>
        <div class="col-2 " style="">
            <a href=""><img class="mt" src="/images/icon/SVG/219-heart - 複製.svg" alt=""></a>&emsp;
            <a href=""><img class="mt" src="/images/icon/SVG/173-bin.svg" alt=""></a>
        </div>
        `);
    });
  }
  function myPrice() {
    var str = 0;
    $.each(results, function (key, obj) {
      str += parseInt(obj.preTripPrice);
    });
    $("#myPrice").append("&emsp;" + str);
  }
});

