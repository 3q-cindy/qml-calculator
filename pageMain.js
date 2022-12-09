var answer = 0;


function handleSequence(str1, str2){
    var results = str1 + str2;
    return results;
}

function handleNumber(str1, str2){
    if(str1 === "0" && str2 !== "."){
        return str2;
    }else{
        var results = str1 + str2;
        return results;
    }
}
function handleFra(str){
    return (1/str).toFixed(3)
}

function clearSequence(){
    return "";
}

function backSequence(str){
    var len = str.length - 1;
    return str.slice(0, len);
}

function reduceNumber(num1, num2){
    return num1 - num2
}

function addNumber(num1, num2) {
    return num1 + num2
}


function handleAnswer(str1){
    let seqNumber = str1.match(/(\d+)[.]?\d*/g);
    let seqHash   = str1.match(/[(^\.)\D]/g);
    let answer = parseInt(seqNumber[0]);
    
    seqHash.map((item, index) => {
                    if(seqNumber[index +1]){
                        switch(item){
                            case '+':
                                        answer += parseInt(seqNumber[index +1]);
                                        break;
                            case '-':
                                        answer -= parseInt(seqNumber[index +1]);
                                        break;
                            case 'x':
                                        answer *= parseInt(seqNumber[index +1]);
                                        break;
                            case '÷':
                                        answer /= parseInt(seqNumber[index +1]);
                                        break;
                            default:{
                                console.log(item);
                                break;
                            }
                        }
                    }
     })
    
    
    console.log("js",seqNumber, seqHash);
    return answer

}
