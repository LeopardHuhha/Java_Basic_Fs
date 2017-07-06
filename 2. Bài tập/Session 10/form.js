function showImage(object,url)
{
    var txtDemo = document.getElementById("txtDemo");
    txtDemo.onfocus = function() {
        var textBoxValue = txtDemo.value;
        if (textBoxValue === "Nhập vào tên") {
            txtDemo.value = "";
        }
    };

    txtDemo.onblur = function() {
        var textBoxValue = txtDemo.value;
        if (textBoxValue === "") {
            txtDemo.value = "Nhập vào tên";
        }
    };
} 
