## MealPhoto solo-project
I test-drove a full-stack feature for my solo-project at Omada Health during my engineering apprenticeship there. For this project, I implemented a feature where participants are able to take a photo of their meal via their mobile device, and it is rendered in a private message thread between the participant's health coach and the participant.

In order to accomplish this, I had to understand the relationship between the Meal model and MealPhoto model.
The Meal model `belongs_to` the MealPhoto model.
- `belongs_to` denotes a one-to-one relationship with another model.
  - one instance of the declaring model matches with one instance of the other model
- In other words, for every meal, there is
one meal_photo
- Since the Meal model has a `belongs_to :meal_photo` association on it, this means that the
Meal table contains the foreign keys (i.e., the primary keys of MealPhoto in this case).
- Ensures referential integrity
- Conversely, the MealPhoto model has a `has_one :meal`
association on it
- Provides a delegate class method to easily expose contained objects' public methods as your own.
- I then delegated the MealPhoto's `small_url` method to the Meal model. The delegation was as follows:
  - `delegate :small_url, to :meal_photo, prefix: true, allow_nil: true
`
- Inserted an additional key-value pair of `photo_url: meal.meal_photos&.small_url` into a `meal_json` hash
- The `meal_json` hash is then serialized into JSON, so that this information is presented client-side
- Created a stateless `MealPhoto.jsx` React component, because it is a dummy component that either renders a meal photo or does not.
- the `MealPhoto` React component requires `photo_url` as props (note that `photo_url` is a key from our JSON object)
- I collaborated with a designer for styling decisions and utilized CSS Flexbox to align elements on the DOM


## Object Oriented Programming v. Functional Programming
- Functional is one of:
  1. has higher-order functions (and first-class functions or blocks) (like Ruby and JavaScript and Python)
  2. has immutable data structures (like Clojure)
  3. is conceptually "pure" (like Haskell, Elm), which tends to involve some kind of Hindley-Milner type system, lazy and/or out-of-order evaluation, and very isolated side-effects which are the only way to communicate with the "outside world".


Those are the three main definitions or categories from what I can tell from my research.
  - Definition #1 doesn't tend to be used a lot these days, since there are languages like JavaScript that have higher-ordered functions(filter, map, reduce) but can still be used in an OOP-fashion. But, some people still call Common Lisp functional even though I believe it falls into the same category as JavaScript, Ruby, and Python.


- Some folks insist that languages that fall into Group #2 aren't "really functional" because they don't constrain side-effects beyond variable assignment and data structures


- Similarly, "Object-Oriented" can have a lot of its own definitions:
  1. "all the way down" OOP languages that center message-passing (like Smalltalk)
  2. Class-based languages with an extra layer of classes or objects bolted on top of a procedural language (like Python)
  3. Languages with any kind of objects with associated methods, including prototype languages (like JavaScript)


 Functional programming reduces side-effects, so it makes code easier to understand. It also tends to use smaller functions, so it's easier to unit-test different parts of your code. Having first-class functions means you have simplified abstractions over common use-cases, so you can replace `for` loops with `map`/`filter`/`reduce`, which are much less error-prone. For example, Elm, a functional language that compiles to JavaScript, claims to have no run-time errors. But, the negative consequence of this is that functional programming has 'stricter' rules. With OOP, on the other hand, you get reusability, abstraction, and inheritance. Its rules are less strict.

 ### TLDR; Functional programming: stricter rules, less-error prone, more cool.
 ### OOP: Laxer rules, but more error-prone, less cool.
