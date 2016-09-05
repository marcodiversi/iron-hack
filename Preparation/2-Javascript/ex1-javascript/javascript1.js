// Write a function that receives a number and prints a countdown of that number all the way to 0 and then Blast off!.
// For example, blastOff(3) would print this:

function blastOff(n){
    i = 0
    for (i = 0; i<n; i++){
        console.log(i);
        if i === 0 {
            console.log("blast off");
        }
    }
}
blastOff(5);