'use strict';

/// <reference path="../../typings/tsd.d.ts"/> 

/**
 * @class
 */
export class Person {
    constructor(public firstname: string, public lastname: string) {

    }

    /**
     * @method
     */
    fullname(): String {
        return this.firstname + " " + this.lastname;
    }
}
