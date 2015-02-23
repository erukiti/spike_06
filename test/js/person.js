/// <reference path="../../bower_components/dt-mocha/mocha.d.ts"/>

import misc = require('../../app/js/site');

var assert = require('power-assert');

describe('Person', function(){
    describe('.fullname', function(){
        // it('test', function(){
        //   var hoge = Person("hoge", "fuga");
        //   assert(hoge.fullname === "fuga hoge ");
        // });

        it('should return index when the value is present', function(){
            var zero = 0, two = 2;
            assert(zero === two);
        });
    });
});
