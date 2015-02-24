var misc = require('../../app/js/person');
var assert = require('power-assert');
describe('Person', function () {
    describe('.fullname', function () {
        it('test', function () {
            var hoge = new misc.Person('hoge', 'fuga');
            assert(assert._expr(assert._capt(assert._capt(assert._capt(hoge, 'arguments/0/left/callee/object').fullname(), 'arguments/0/left') === 'fuga hoge', 'arguments/0'), {
                content: 'assert(hoge.fullname() === "fuga hoge")',
                filepath: '/Users/shunsuke_sasaki/work/spike_06/compiled_test/test/js/person_test.js',
                line: 8
            }));
        });
        it('should return index when the value is present', function () {
            var zero = 0, two = 2;
            assert(assert._expr(assert._capt(assert._capt(zero, 'arguments/0/left') === assert._capt(two, 'arguments/0/right'), 'arguments/0'), {
                content: 'assert(zero === two)',
                filepath: '/Users/shunsuke_sasaki/work/spike_06/compiled_test/test/js/person_test.js',
                line: 12
            }));
        });
    });
});