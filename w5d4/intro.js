function madLib(verb, adj, noun) {
  console.log(`We shall ${verb.toUpperCase()} the ${adj.toUpperCase()} ${noun.toUpperCase()}`);
}

// madLib('make', 'best', 'guac');

function isSubstring(str1, str2) {
  return str1.includes(str2);
}

// isSubstring("time to program", "time");

function fizzBuzz(array) {
  var result = [];
  array.forEach( element =>  {
    if ((element % 3 == 0) ^ (element % 5 == 0)) {
      result.push(element);
    }
  }
  return result
}

// fizzBuzz([1,2,2,3,4,5,6,7]);

function isPrime(num) {

  for (let i = 2; i < n; i++) {
    if (n % i === 0) {
      return false;
    }
  }
  return true;
}
