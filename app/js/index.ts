/// <reference path="../../typings/tsd.d.ts"/> 

import misc = require("./person");
var hoge = new misc.Person("fugao", "hogeta");

function greetings(person: misc.Person) {
    console.log("Hello, " + person.fullname());
}

greetings(hoge);
