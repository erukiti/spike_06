'use strict';

/// <reference path="../../typings/tsd.d.ts"/> 

export class Person {

    /**
     * 人クラス
     * @class Person
     * @constructor
     * @param {string} firstname
     * @param {string} lastname
     */
    constructor(public firstname: string, public lastname: string) {

    }

    /**
     * フルネームを取り出す
     * @method fullname
     */
    fullname(): String {
        return this.firstname + " " + this.lastname;
    }
}
