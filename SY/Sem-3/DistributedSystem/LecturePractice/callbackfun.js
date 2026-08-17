//callback function are used 
//setTimeout:- Givr function to setTimeout()--> Wait 3 seconds --> callback executes automatically.
setTimeout(()=> {
    console.log("Welcome");
},3000);
//net(module/pakage) ,socket(is a event)
net.createServer((socket) => {
    console.log("Client connected");
});

//on() is a method used to listen for an event
socket.on('event',(data)=>{
    console.log(data);
});



//In java built in classes in JS have first later capital , and for built in method if a single word method is there all small letters but if 2 words first small 2nd first later capital next ... camelCase.