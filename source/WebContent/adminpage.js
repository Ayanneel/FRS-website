    var y


    function getRow(x){
        y = x.rowIndex
    }


    function deleteRoute(){
        var f = document.getElementById("routeTable")
        var fid =  f.rows[y].cells[0].innerHTML
        console.log(fid)
        var a = f.deleteRow(y)
        var f2 = document.getElementById("deleteForm")
        f2.flightId.value = fid
        f2.submit()
    }

    function addRouteRow(){

        var f = document.getElementById("addRoute")
        var a = f.flightName.value
        var b = f.source.value
        var c = f.destination.value
        var d = f.distance.value
        var e = f.duration.value
        var g = f.cost.value
        var h = f.seatingCapacity.value
        
        
        $("table tbody").append(
            '<tr onclick="getRow(this)">'+
                            '<td>'+a+'</td>'+
                            '<td>'+b+'</td>'+
                            '<td>'+c+'</td>'+
                            '<td>'+d+'</td>'+
                            '<td>'+e+'</td>'+
                            '<td>'+g+'</td>'+
                            '<td>'+h+'</td>'+
                            '<td>'+
                                '<a href="#editModal" class="edit" onclick="defaultRoute(this.parentNode.parentNode)" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i></a>'+
                                '<a href="#deleteModal" class="delete" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i></a>'+
                            '</td>'+
                        '</tr>'
        )
        
        

        f.flightName.value = ""
        f.source.value = ""
        f.destination.value = ""
        f.distance.value = ""
        f.duration.value = ""
        f.cost.value = ""
        f.seatingCapacity.value = ""
        	
        f.fid.value = a
        f.source1.value = b
        f.destination1.value = c
        f.distance1.value = d
        f.duration1.value = e
        f.cost1.value = g
        f.sc1.value = h
        
        f.submit()
    }

    function editRouteRow(){
        var f = document.getElementById("editRoute")
        var a = f.flightName.value
        var b = f.source.value
        var c = f.destination.value
        var d = f.distance.value
        var e = f.duration.value
        var g = f.cost.value
        var h = f.seatingCapacity.value

        var table = document.getElementById("routeTable")

        //table.rows[y].cells[0].innerHTML = a;
        table.rows[y].cells[1].innerHTML = b;
        table.rows[y].cells[2].innerHTML = c;
        table.rows[y].cells[3].innerHTML = d;
        table.rows[y].cells[4].innerHTML = e;
        table.rows[y].cells[5].innerHTML = g;
        table.rows[y].cells[6].innerHTML = h;
        
        f.submit()
    }
    
    
var flag = 0
var names = []
var flightIds=[]
var ages=[]
var dates=[]
    function search(){
        var se = document.getElementById("myInput").value
        var table = document.getElementById("passengerTable");
        
        if(flag==0){
        	
            n = table.rows.length
            
            for(var i=1;i<n;i++){
                 names[i-1]=table.rows[i].cells[0].innerHTML
                 flightIds[i-1]=table.rows[i].cells[1].innerHTML
                 ages[i-1]=table.rows[i].cells[2].innerHTML
                 dates[i-1]=table.rows[i].cells[3].innerHTML
            }
        	
        	flag = 1
        }
        
        $("table tbody tr").remove();

        for(x in names){
            if(names[x].toLowerCase()===se.toLowerCase()){
            	console.log("check");
                $("table tbody").append( "<tr>" +
                		"<td>"+names[x]+"</td>" +
                		"<td>"+ages[x]+"</td>" +
                		"<td>"+flightIds[x]+"</td>"+
                		"<td>"+dates[x]+"</td>"+
                		"</tr>" );
            }
        }
        $("table tbody").show();
        }

    function defaultRoute(x){
        x = x.rowIndex
        var table = document.getElementById("routeTable")
        f = document.getElementById("editRoute")

        f.flightName.value = table.rows[x].cells[0].innerHTML
        f.source.value = table.rows[x].cells[1].innerHTML
        f.destination.value = table.rows[x].cells[2].innerHTML
        f.distance.value = table.rows[x].cells[3].innerHTML
        f.duration.value = table.rows[x].cells[4].innerHTML
        f.cost.value = table.rows[x].cells[5].innerHTML
        f.seatingCapacity.value = table.rows[x].cells[6].innerHTML

    }
    
    function changePass(){
    	var f = document.getElementById("changePasswordForm")
    	var pwd1 = f.pwd1.value
    	var pwd2 = f.pwd2.value
    	
    	if(pwd1!=pwd2){
    		alert("Password Mismatch!")
    	}
    	else{
    		alert("Successfully Changed!")
    		$('#changePasswordModal').modal('hide');
    	}
    	
    	f.submit()
    }
    
    
