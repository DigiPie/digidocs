# Introduction to Probability
This set of notes was prepared for Stanford University's CME 106: Introduction to Probability and Statistics for Engineers, which I took under [Vadim Khayms](https://profiles.stanford.edu/vadim-khayms) in [Summer 2019](https://summer.stanford.edu/ihp).

This page covers:

- Sample spaces, events
- Axioms of probability
- Counting, permutations

## Resources
- Sheldon M. Ross's book: [Introduction to Probability and Statistics for Engineers and Scientists](https://www.sciencedirect.com/book/9780123704832/introduction-to-probability-and-statistics-for-engineers-and-scientists)
- Shervine's CME 106 online cheat sheets:  
<https://stanford.edu/~shervine/teaching/cme-106/>

## Sample space _S_
_S_ is the set of all possible outcomes of an experiment. All elements in _S_ has to be mutually exclusive (disjoint).

### Discrete _S_
A **discrete** sample space is countable:

The sex of a newborn child: _S_ = {M, F}

### Continuous _S_

A **continuous** sample space is not countable: _S_ = (0, ∞)

## Events _E_
Any subset of the sample space is known as an event _E_. _E_ is a set consisting of possible outcomes of an experiment. Events of a sample space _S_ are mutually exclusive if they do not share common elements.

For any two events _E_ and _F_, we can define a new event through:

### Union of events _E_∪_F_
_E_∪_F_ is the union of _E_ and _F_. It consists of all outcomes that are either in _E_ or _F_ or both.

### Intersection of events _EF_
_EF_ is the intersection of _E_ and _F_. It consists of all outcomes that are in both _E_ and _F_.

### Complement of event _E_<sup>c</sup>
_E_<sup>c</sup> is the complement of _E_. It consists of all outcomes in _S_ which are not in _E_.

For any two events _E_ and _F_:

### Subset of event _E_⊂_F_
If all outcomes in _E_ are also in _F_, then _E_ is contained within _F_.

### Operation rules        
Commutative law: _E_∪_F_ = _F_∪_E_ and _EF_ = _FE_

Associative law: (_E_∪_F_)∪_G_ = _E_∪(_F_∪_G_) and (_EF_)_G_ = _E_(_FG_)

Distributive law: (_E_∪_F_)_G_ = (_EG_)∪(_FG_) and (_EF_)∪_G_ = (_E_∪_G_)(_F_∪_G_)

DeMorgan's law: (_E_∪_F_)<sup>c</sup> = _E_<sup>c</sup>_F_<sup>c</sup> and (_EF_)<sup>c</sup> = _E_<sup>c</sup>∪_F_<sup>c</sup>

## Axioms of probability
For every event _E_, we denote P(_E_) as the probability of _E_ occurring.

**Axiom 1:** 0 ⩽ P(E) ⩽ 1

Every probability is between 0 and 1 (inclusive).

**Axiom 2:** P(S) = 1

The outcome will be a member of _S_.

**Axiom 3:**

![s](https://wikimedia.org/api/rest_v1/media/math/render/svg/47f22fe03df467b1d20785e5026bac39fabd9edc)

<sub>_Equation picture by Wikipedia_</sub>

For any set of mutually exclusive events, the probability that at least one event occurs is equal to the sum of all their respective probabilities.

Example:
If AB ≠ ∅ (not mutually exclusive), then P(A∪B) = P(A) + P(B) - P(AB)
If AB = ∅ (mutually exclusive), then P(A∪B) = P(A) + P(B)
