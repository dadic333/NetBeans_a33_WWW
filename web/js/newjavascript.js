var CABLE = {
  init: function(){
    var id=2;
    $.ajax({
    url:"getCableHead.jsp", data:{ id:2},
    success: function(data){
      console.log(data);
    }
    });
  },
  setData: function(id, name){
    $.ajax({
    url:"editCable.jsp", data:{ id:id, name:name},
    success: function(data){
      alert(data);
    }
    });
  }
};
        

$( document ).ready(function() {
  $("#sendData").click(function(){

  var tr = $(this).parents("tr");
  var id = tr.attr("data-bindID");
  var name = tr.find("._nameCable").val();
//  var pzn = tr.find("._poznamkaCable").val();
  console.log(id);
  
  CABLE.setData(id, name);
});
});

