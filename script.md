---
paginate: true
theme: default
class: lead
---

## Slide 1: Title

Hello everyone, my name is Phat Tran Dai. Today I’ll walk you through an unusual yet fascinating approach to programming: **concatenative programming languages**.

These languages are different from what most of us are used to — they avoid named variables, rely heavily on a stack, and favor function composition by simple juxtaposition. They’re elegant, compact, and often overlooked. Let’s explore why they matter.

---

## Slide 2: Agenda

Here's our agenda:

1. We’ll define what concatenative languages are.
2. Look into their history.
3. Explore their core concepts.
4. See real examples, including recursive functions.
5. Walk through a small but meaningful program.
6. Discuss strengths, weaknesses, and practical applications.

---

## Slide 3: What Are Concatenative Languages?

Concatenative languages are based on a simple but powerful idea: functions are composed by writing them next to each other — literally, by **concatenating** them.

They use a **stack** to store and manipulate values. Functions operate on this stack — usually consuming the top elements and pushing results back.

Unlike traditional programming, these languages use **point-free** style — there are no named variables or arguments. Code becomes shorter, but also more abstract.

---

## Slide 4: Historical Background

Concatenative languages have deep roots.

- In 1970, Charles Moore created **Forth** — a stack-based, minimalistic language.
- In 1982, Adobe released **PostScript**, which brought stack-based programming into graphics and printing.
- In the 2000s, more abstract and functional forms appeared:
  - **Joy** (2001), created to study the pure concatenative model.
  - **Factor** (2003), a practical and powerful modern language.
  - **Cat** (2006), which explored strong static typing in this paradigm.

---

## Slide 5: Key Features

Let’s recap the defining features:

- **Concatenation**: You build programs by placing functions side by side.
- **Point-free style**: No variables or parameters.
- **Stack-based execution**: Data flows in and out of a stack.
- **Functional purity**: Most of these languages avoid side effects.

All of this enables elegant and expressive programs, but with a steep learning curve at first.

---

## Slide 6: Examples of Languages

Examples of concatenative languages include:

- **Forth** — still used in embedded systems.
- **PostScript** — widely used in printers and PDF rendering.
- **Joy** — primarily academic, with formal semantics.
- **Factor** — interactive, powerful, and usable today.
- **Cat** — more experimental, focused on static typing.

These languages share a syntax and mindset, though they vary in implementation.

---

## Slide 7: Basic Syntax Example (Factor)

Here’s a simple expression in **Factor**:

```

2 3 + 4 \*

````

This pushes `2`, then `3`, adds them to get `5`, pushes `4`, and multiplies → resulting in `20`.

There are no parentheses, no variables. Just a sequence of operations that manipulate a stack.

This is the core of concatenative thinking.

---

## Slide 8: Defining Functions (Factor)

We can define functions too. Here’s a simple one:

```factor
: square ( n -- n² ) dup * ;
````

It duplicates the top of the stack and multiplies the two top values. So `5 square .` produces `25`.

The `( n -- n² )` part is a stack comment — it tells us what goes in and what comes out.

---

## Slide 9: Recursion Example (Factorial)

Let’s define factorial in Factor:

```factor
: factorial ( n -- n! )
    dup 1 <= 
    [ drop 1 ] 
    [ dup 1 - factorial * ] 
    if ;
```

We check if the input is 1 or less. If so, we return 1. Otherwise, we compute `n * factorial(n-1)` recursively.

Try `5 factorial .` → result is `120`.

---

## Slide 10: Fibonacci Example

Another great recursive example: Fibonacci.

```factor
: fib ( n -- fib(n) )
    dup 2 < [ drop 1 ]
    [ dup 1 - fib swap 2 - fib + ] if ;
```

It’s a direct definition: `fib(n-1) + fib(n-2)` with base case `n < 2`.

For `6 fib .` → output is `13`.

This highlights how expressive and minimal recursive programs can be in this style.

---

## Slide 11: Rule 110 – Longer Program

Let’s now look at a longer, more complex example: **Rule 110**, a cellular automaton similar to Conway’s Game of Life.

I wrote this in my own concatenative language — you can check it out at [github.com/phatt-23/stack-pl](https://github.com/phatt-23/stack-pl).

It includes memory operations, iteration, conditionals, output, and bitwise logic — all written in a stack-based style.

---

## Slide 12: Rule 110 Output

Here’s the output: a triangular, evolving pattern of stars and spaces.

Each row represents a step in the automaton’s evolution. The beauty of this pattern comes from a very simple rule applied recursively.

This example shows how real, complex programs can be written in a concatenative language — it’s not just theoretical.

---

## Slide 13: Strengths ✅

Some strengths of this paradigm:

* Syntax is concise and elegant.
* Function composition is seamless.
* Stack-based execution is predictable.
* Point-free style encourages modular thinking.
* Functional purity makes it easier to reason about code.

You can often express powerful ideas in very little code.

---

## Slide 14: Weaknesses ⚠️

That said, it’s not all perfect:

* The syntax is unfamiliar and abstract at first.
* Stack manipulation can be tricky in large programs.
* The ecosystem is small, so there’s limited tooling and community support.
* Very few jobs or production systems use these languages directly.

They’re powerful but still niche.

---

## Slide 15: Real-world Applications

Despite being niche, concatenative languages shine in some areas:

* **Forth** is widely used in embedded systems and firmware.
* **PostScript** powers PDF and printer rendering.
* **Factor** is used for scripting, prototyping, and language research.
* Academically, they’re great for teaching composition and higher-order functions.

---

## Slide 16: Why Learn Them?

So why learn concatenative languages?

Because they challenge how you think about programming.

They improve your understanding of function composition and control flow.
They strip away noise and force you to think about **data movement and transformation**.

You may never use them professionally, but they make you a better, more thoughtful programmer.

---

## Slide 17: Resources

To learn more:

* Explore [factorcode.org](https://factorcode.org)
* Read about Joy at [concatenative.org](https://concatenative.org)
* Look into Cat if you’re into static typing.
* Finally, read *Thinking Forth* — it’s a great book, even if you never touch Forth.

---


Thank you so much for listening.



