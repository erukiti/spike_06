var misc = require('../../app/js/person');
var assert = require('power-assert');
describe('Person', function () {
    describe('.fullname', function () {
        it('failed', function () {
            var hoge = new misc.Person('hoge', 'fuga');
            assert(assert._expr(assert._capt(assert._capt(assert._capt(hoge, 'arguments/0/left/callee/object').fullname(), 'arguments/0/left') === 'hoge fuga ', 'arguments/0'), {
                content: 'assert(hoge.fullname() === "hoge fuga ")',
                filepath: '/Users/shunsuke_sasaki/work/spike_06/compiled_test/test/js/person_test.js',
                line: 8
            }));
        });
        it('succeeded', function () {
            var hoge = new misc.Person('hoge', 'fuga');
            assert(assert._expr(assert._capt(assert._capt(assert._capt(hoge, 'arguments/0/left/callee/object').fullname(), 'arguments/0/left') === 'hoge fuga', 'arguments/0'), {
                content: 'assert(hoge.fullname() === "hoge fuga")',
                filepath: '/Users/shunsuke_sasaki/work/spike_06/compiled_test/test/js/person_test.js',
                line: 12
            }));
        });
    });
});