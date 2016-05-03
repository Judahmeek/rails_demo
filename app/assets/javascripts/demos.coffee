$(document).ready ->
    $("#rails").on("ajax:success", (e, data, status, xhr) ->
        console.log("remote success")
        console.dir({'e': e})
        console.dir({'xhr': xhr})
        $("#rails-results").append '<div>e:'+e+' data:'+data+' status:'+status+' xhr:'+xhr+'</div>'
        ).on("ajax:error", (e, xhr, status, error) ->
            console.log("remote failure")
            console.dir({'e': e})
            console.dir({'xhr': xhr})
            $("#rails-results").append '<div>e:'+e+' xhr:'+xhr+' status:'+status+' error:'+error+'</div>')
    
    $("#json").click ->
        $.ajax(
                url: "test",
                #id: 123,
                type: "GET",
                dataType : "json",
            ).done( (json) ->
                $( "<p>" ).text( json ).appendTo( "#json-results" )
            ).fail( (xhr, status, errorThrown) ->
                alert( "Sorry, there was a problem!" )
                console.log( "Error: " + errorThrown )
                console.log( "Status: " + status )
            ).always( (xhr, status) ->
                alert( "The request is complete!" )
                console.log("request result")
                console.dir( xhr ))
    return