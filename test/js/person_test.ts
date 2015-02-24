/// <reference path="../../typings/tsd.d.ts"/> 
import misc = require('../../app/js/person');
import assert = require('power-assert');

describe('Person', function(){
    describe('.fullname', function(){
        it('test', function(){
            var hoge = new misc.Person("hoge", "fuga");
            assert(hoge.fullname() === "fuga hoge");
        });

        it('should return index when the value is present', function(){
            var zero = 0, two = 2;
            assert(zero === two);
        });
    });
});
