var request = require('supertest')

test("1 plus 1 should be equal to 2", () => {
    let a = 1;
    let b = 1;
    expect(a + b).toBe(2);
})