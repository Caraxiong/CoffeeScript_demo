// Generated by CoffeeScript 1.11.1
(function() {
  var eldest, error, globals, grade, name, one, six, three, two;

  grade = function(student) {
    if (student.excellentWork) {
      return "A+";
    } else if (student.okayStuff) {
      if (student.triedHard) {
        return "B";
      } else {
        return "B-";
      }
    } else {
      return "C";
    }
  };

  eldest = 24 > 21 ? "Liz" : "Ike";

  six = (one = 1) + (two = 2) + (three = 3);

  console.log(six);

  globals = ((function() {
    var results;
    results = [];
    for (name in window) {
      results.push(name);
    }
    return results;
  })()).slice(0, 10);

  console.log(globals);

  alert((function() {
    try {
      return nonexistent / void 0;
    } catch (error1) {
      error = error1;
      return "And the error is ... " + error;
    }
  })());

}).call(this);
