'use strict';

export class Person {
    fullname: string;
    constructor(public firstname: string, public lastname: string) {
        this.fullname = firstname + " " + lastname;
    }
}
