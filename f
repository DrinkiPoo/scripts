#!/usr/bin/node

// Lookup Project Euler #254 for more info

let n = Number(process.argv[2])

function factorial(num) {
    if (num === 0) return 1
    return factorial(num - 1) * num
}

function split(num) {
    return num.toString().split('').map(x => Number(x))
}

function add(arr) {
    return arr.reduce((acc, cur) => acc + cur, 0)
}

function f(num) {
    return add(split(num).map(x => factorial(x)))
}

let ans = String(f(n))

process.stdout.write(ans + "\n")
