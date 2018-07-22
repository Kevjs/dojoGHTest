var world=[
];
function createSquareWorld(size){
    world = [];
    for(var temp = 0; temp < size; temp++){
        world.push([]);
        for(var temp2 = 0; temp2 < size; temp2++){
            var i = Math.floor(Math.random() * 5);
            world[temp].push(i);
        }
    }
}

var worldDic={
    0:"empty",
    1:"wall",
    2:"coin",
    3:"powerUp",
    4:"cherries"
}
createSquareWorld(10);
function drawWorld(){
    var temp = "";
    for(var i = 0; i < world.length; i++){
        for(var b = 0; b < world[i].length; b++){
            temp += "<div class='"+worldDic[world[i][b]]+" box'></div>";
        }
    }
    console.log(document.getElementById("world"));
    document.getElementById("world").innerHTML = temp;
}
drawWorld();