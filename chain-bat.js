//This is a WIP. It uses Node.js
console.log("Launched");
const cmd = require('node-cmd');
const fs = require('fs');
var currentHill;
fs.readFile('.\\chain.txt', async (err, data) => {
	currentHill = await data;
})
setTimeout(() => {
if(!currentHill){
	console.log("There was an issue getting the hill.");
	return;
}else{
	console.log(currentHill.toString().split(" ") + "---------------\n\n");
	currentHill = currentHill.toString().split(" ");
}
var i = currentHill.length;
function playRound(i){
	cmd.get(
        '..\\pmarsw -r 250 -v 000 .\\' + currentHill[i] + ' .\\' + currentHill[i-1],
        function(err, data, stderr){
	if(err){console.log(err)};
	if(stderr){console.log(err)};
	var resultsLocation = data.indexOf("Results: ")+9;
	console.log(currentHill[i] + " vs " + currentHill[i-1] + " -- " + data.slice(resultsLocation));
	var results = data.slice(resultsLocation).split(" ");
	var resultsNum = [0, 0, 0];
		for(var j = 0; j <= results.length; j++){
//			for(var p = 0; p <= results[j].length; p){
				for(var n = 0; n <= 250; n++){
					if(results[j]===n.toString()){
						resultsNum[j]=n;
					}
//				}
			}
		}
	if(resultsNum[0]>resultsNum[1]){ //win
		console.log("--- " + currentHill[i] + " beat " + currentHill[i-1] + " and moved up 1!");
		var temp = currentHill[i];
		currentHill[i] = currentHill[i-1];
		currentHill[i-1] = temp;
	}
if(i>0){
	playRound(i-1);
}else{
	fs.writeFile('.\\chain.txt', currentHill.join(" "), function (err){
		if (err) console.log(err);
});
	cmd.run("git add chain.txt && git push && notepad chain.txt");
	console.log("Finished");
}
    });
};
playRound(currentHill.length);
}, 3000);