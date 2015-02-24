'use strict';

/// <reference path="../../typings/tsd.d.ts"/> 

import misc = require("./person");
var hoge = new misc.Person("fugao", "hogeta");

export function greetings(person: misc.Person) {
  document.getElementById("greetings").innerHTML = "Hello, " + person.fullname();
}

greetings(hoge);
