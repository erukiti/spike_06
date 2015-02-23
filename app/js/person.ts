'use strict';

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
