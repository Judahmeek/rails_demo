$(document).ready ->
    $("#rails").on("ajax:success", (e, data, status, xhr) ->
        $("#rails-results").append '<div>e:'+e+' data:'+data+' status:'+status+' xhr:'+xhr+'</div>'
        ).on("ajax:error", (e, xhr, status, error) ->
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
                console.dir( xhr )
            ).always( (xhr, status) ->
                alert( "The request is complete!" ))
    return