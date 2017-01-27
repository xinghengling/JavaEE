
$(document).ready(function () {
    var placeName = ['大夫山', '沙面', '长隆'];// 轮播图景点
    var placeImg = [
        '${pageContext.request.contextPath}/images/abtractions/da_fu_shan.jpg',
        '${pageContext.request.contextPath}/images/abtractions/sha_mian.jpg',
        '${pageContext.request.contextPath}/images/abtractions/chang_long.jpg'];
    curIndex = 0;
    totalNum = placeName.length;
    function showImg() {
        var pos = curIndex % totalNum;
        $("#item").css("src", placeImg[pos]);
        $(".carousel-caption").val(placeName[pos]);
        curIndex = curIndex + 1;
        alert(curIndex);
    }
// alert("")
    var timer = setInterval(showImg, 2000);
})

