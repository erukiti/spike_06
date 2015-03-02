/// <reference path="../../typings/tsd.d.ts"/> 

declare function require(x: string): any;

var misc = require('../../compiled_app/js/person');
import assert = require('power-assert');

describe('Person', () => {
    describe('.fullname', () => {
        it('failed', () => {
            var hoge = new misc.Person("hoge", "fuga");
            assert(hoge.fullname() === "hoge fuga ");
        });

        it('succeeded', () => {
            // var hoge = new misc.Person("hoge", "fuga");
            // assert(hoge.fullname() === "hoge fuga");
        });
    });
});
