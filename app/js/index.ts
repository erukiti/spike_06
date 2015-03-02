'use strict';

/// <reference path="../../typings/tsd.d.ts"/> 

var misc = require("./models/person");
var hoge = new misc.Person("fugao", "hogeta");

export function greetings(person: misc.Person) {
  document.getElementById("greetings").innerHTML = "Hello, " + person.fullname();
}

greetings(hoge);
