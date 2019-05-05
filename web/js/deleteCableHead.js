var CABLE = {
  init: function(){
    var id=3;
    $.ajax({
    url:"getCableHead.jsp", data:{ id:id},
    success: function(data){
      console.log(data);
    }
    });
  },
  toDelete: function(id){
    $.ajax({
      url:"deleteCableHead.jsp", data:{ id:id},
      success: function(data){
        alert(data);
      }
    });
  }
};
  
$(document).ready(function() {
  $("#sendData").click(function(){  
  var tr = $(this).parents("tr");
  var id = tr.attr("data-bindID");
  console.log(id);
    CABLE.toDelete(id);
  });
});



