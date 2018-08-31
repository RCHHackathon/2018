var application = function(){
    var ALMemory = null;
	
    var log = function(l){
        if(console) console.log(l)  ;  
    };
    
    $("#touch_me").click(function(){
        $("#touch_me").fadeOut(function(){
            setTimeout(function(){
                $("#touch_me").fadeIn()
            }, 3000)
        })
    })
    
    function changeBGColor(data){
        bg_animation = data[2];
        bg_color1 = data[0];
        bg_color2 = null;
        bg_duration = data[1];
        $("body").animate({ "background-color": bg_color1 }, bg_duration, bg_animation);
    }
	
	/*QiSession Events*/
	 
    var onConnected = function(session){
        log("connected");
        session.service("ALMemory").then(function (serv) {
            ALMemory = serv;
        },
        function(error){
            log("Unable to get the service ALMemory : " + error);
        });
        RobotUtils.subscribeToALMemoryEvent("template/changeBGColor", changeBGColor);
    };
	
    var onError = function(){
        log("Disconnected, or failed to connect :-(");
    };
        
    var init = function(){
        RobotUtils.connect(onConnected, onError); // async !
        return this;
    };
    
    return init();
};