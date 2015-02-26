/// <reference path="../../typings/tsd.d.ts"/> 
import misc = require('../../app/js/person');
import assert = require('power-assert');

describe('Person', () => {
    describe('.fullname', () => {
        it('failed', () => {
            var hoge = new misc.Person("hoge", "fuga");
            // assert(hoge.fullname() === "hoge fuga ");
        });

        it('succeeded', () => {
            var hoge = new misc.Person("hoge", "fuga");
            assert(hoge.fullname() === "hoge fuga");
        });
    });
});
