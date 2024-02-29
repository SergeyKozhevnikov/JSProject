
     let _start = 2, 
     _end = 20;

for (let i = _start; i <= _end; i++) 
{			
    let edge = Math.sqrt(i);
	let isPrime = true;
		
    for (let j = 2; j <= edge; j++) {
        if (i % j) continue;
        isPrime = false;
	    break;
    }
    if (isPrime) 
    //Session.Output("Простое число " + "[" + i +"] = " + + i);
    {   
        //alert(i);
        console.log('i = ' + i);
    }
}