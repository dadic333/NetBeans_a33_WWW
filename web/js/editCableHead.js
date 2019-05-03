var CABLE = {
  init: function(){
    var id=2;
    $.ajax({
    url:"getCableHead.jsp", data:{ id:id},
    success: function(data){
      console.log(data);
    }
    });
  },
  setData: function(id, name, building, note){
    $.ajax({
      url:"editCableHead.jsp", data:{ id:id, name:name, building:building, note:note},
      success: function(data){
        alert("Byl upraven záznam:  "+name+data);
      }
    });
  }
};
  
$( document ).ready(function() {
  $("#sendData").click(function(){  
  var tr = $(this).parents("tr");
  var id = tr.attr("data-bindID");
  var name = tr.find("._nameCable").val();
  var building = tr.find("._buildingCable").val();
  var note = tr.find("._noteCable").val();
  console.log(id);
  CABLE.setData(id, name, building, note);
  });
});

