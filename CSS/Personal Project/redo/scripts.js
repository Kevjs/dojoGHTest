function turnBlock(what){
    var temp = document.getElementById(what);
    document.getElementById('messages').style.display = 'none';
    document.getElementById('calendar').style.display = 'none';
    document.getElementById('dashboard').style.display = 'none';
    temp.style.display = 'block';
}