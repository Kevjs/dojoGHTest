var users = [{name: "Michael", age:37}, {name: "John", age:30}, {name: "David", age:27}];
console.log(users[0].name," - ",users[0].age,"\n",users[1].name," - ",users[1].age,"\n",users[2].name," - ",users[2].age);
for(var i=0; i<3;i++){
    console.log(users[i].name," - ",users[i].age);
}