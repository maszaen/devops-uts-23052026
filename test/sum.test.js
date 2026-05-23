const sum = require('../src/sum');

test('1 + 2 = 3', () => {
    expect(sum(1, 2)).toBe(3);
});

test('5 + 5 = 10', () => {
    expect(sum(5, 5)).toBe(10);
});