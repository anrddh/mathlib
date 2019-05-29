# 100 Theorems

In this file we collect information on how Lean is doing
on the 100 theorems challenge: http://www.cs.ru.nl/~freek/100/.

## 1. The Irrationality of the Square Root of 2

```lean
theorem irr_sqrt_two : irrational (sqrt 2) :=
```

* Author: Abhimanyu Pallavi Sudhir
* Link: https://github.com/leanprover-community/mathlib/blob/739d28a60f347e7357b76cd2d24e41460e49a456/src/data/real/irrational.lean#L63

## 2. Fundamental Theorem of Algebra

```lean
lemma exists_root {f : polynomial ℂ} (hf : 0 < degree f) : ∃ z : ℂ, is_root f z :=
```

* Author: Chris Hughes
* Link: https://github.com/leanprover-community/mathlib/blob/0b350228544244f2861ec8afc84dad0c27113a73/src/analysis/complex/polynomial.lean#L28

<!--
## 3. The Denumerability of the Rational Numbers

* Author:
* Link:

## 4. Pythagorean Theorem

* Author:
* Link:

## 5. Prime Number Theorem

* Author:
* Link:

## 6. Godel’s Incompleteness Theorem

* Author:
* Link:
-->

## 7. Law of Quadratic Reciprocity

```lean
theorem quadratic_reciprocity (hp : nat.prime p) (hq : nat.prime q) (hp1 : p % 2 = 1) (hq1 : q % 2 = 1) (hpq : p ≠ q) :
legendre_sym p q hq * legendre_sym q p hp = (-1) ^ ((p / 2) * (q / 2)) :=
```

* Author: Chris Hughes
* Link: https://github.com/leanprover-community/mathlib/blob/fb8001d6fd786a67e01d022241f01b7017ae0825/src/data/zmod/quadratic_reciprocity.lean#L503

<!--
## 8. The Impossibility of Trisecting the Angle and Doubling the Cube

* Author:
* Link:

## 9. The Area of a Circle

* Author:
* Link:

## 10. Euler’s Generalization of Fermat’s Little Theorem

* Author:
* Link:
-->

## 11. The Infinitude of Primes

```lean
theorem exists_infinite_primes (n : ℕ) : ∃ p, p ≥ n ∧ prime p :=
```

* Author: Jeremy Avigad
* Link: https://github.com/leanprover-community/mathlib/blob/d935bc312fac7eca7ef08b16ca06079145b437f2/src/data/nat/prime.lean#L231

<!--
## 12. The Independence of the Parallel Postulate

* Author:
* Link:

## 13. Polyhedron Formula

* Author:
* Link:

## 14. Euler’s Summation of 1 + (1/2)^2 + (1/3)^2 + ….

* Author:
* Link:

## 15. Fundamental Theorem of Integral Calculus

* Author:
* Link:

## 16. Insolvability of General Higher Degree Equations

* Author:
* Link: -->

## 17. De Moivre’s Theorem
```lean
theorem cos_add_sin_mul_I_pow (n : ℕ) (z : ℂ) :
  (cos z + sin z * I) ^ n = cos (↑n * z) + sin (↑n * z) * I
```
* Author: mathlib
* Link: https://github.com/leanprover-community/mathlib/blob/d4c7b7a6c26fed7f526234fa9c7f57eaf4f7b587/src/data/complex/exponential.lean#L678

<!-- ## 18. Liouville’s Theorem and the Construction of Trancendental Numbers

* Author:
* Link:

## 19. Four Squares Theorem

* Author:
* Link:

## 20. All Primes Equal the Sum of Two Squares

* Author:
* Link:

## 21. Green’s Theorem

* Author:
* Link:

## 22. The Non-Denumerability of the Continuum

* Author:
* Link:

## 23. Formula for Pythagorean Triples

* Author:
* Link:
-->

## 24. The Undecidability of the Continuum Hypothesis

* **Partial progress**: The unprovability of the continuum hypothesis. Caveat: ZFC is extended with a limited number of function symbols in result.
```lean
theorem CH_f_unprovable : ¬ (ZFC' ⊢' CH_f)
```
* Author: Floris van Doorn and Jesse Michael Han
* Link: https://flypitch.github.io/ (website) and https://github.com/flypitch/flypitch (code)


## 25. Schroeder-Bernstein Theorem
```lean
theorem schroeder_bernstein {f : α → β} {g : β → α}
  (hf : injective f) (hg : injective g) : ∃h:α→β, bijective h
```
* Author: Mario Carneiro
* Link: https://github.com/leanprover-community/mathlib/blob/024da4095269392369f0d818be5f0ada9b173e18/src/set_theory/schroeder_bernstein.lean#L21

<!--
## 26. Leibnitz’s Series for Pi

* Author:
* Link:

## 27. Sum of the Angles of a Triangle

* Author:
* Link:

## 28. Pascal’s Hexagon Theorem

* Author:
* Link:

## 29. Feuerbach’s Theorem

* Author:
* Link:

## 30. The Ballot Problem

* Author:
* Link:

## 31. Ramsey’s Theorem

* Author:
* Link:

## 32. The Four Color Problem

* Author:
* Link:

## 33. Fermat’s Last Theorem

* Author:
* Link:

## 34. Divergence of the Harmonic Series

* Author:
* Link:

## 35. Taylor’s Theorem

* Author:
* Link:

## 36. Brouwer Fixed Point Theorem

* Author:
* Link:

## 37. The Solution of a Cubic

* Author:
* Link:

## 38. Arithmetic Mean/Geometric Mean

* Author:
* Link:

## 39. Solutions to Pell’s Equation

* Author:
* Link:

## 40. Minkowski’s Fundamental Theorem

* Author:
* Link:

## 41. Puiseux’s Theorem

* Author:
* Link:

## 42. Sum of the Reciprocals of the Triangular Numbers

* Author:
* Link:

## 43. The Isoperimetric Theorem

* Author:
* Link:
-->

## 44. The Binomial Theorem

```lean
theorem add_pow :
∀ n : ℕ, (x + y) ^ n = (range (succ n)).sum (λ m, x ^ m * y ^ (n - m) * choose n m)
```

* Author: Chris Hughes
* Link: https://github.com/leanprover-community/mathlib/blob/22948763023aff7b0a9634b180e7838b39a3803d/src/data/nat/choose.lean#L25

<!--
## 45. The Partition Theorem

* Author:
* Link:

## 46. The Solution of the General Quartic Equation

* Author:
* Link:

## 47. The Central Limit Theorem

* Author:
* Link:

## 48. Dirichlet’s Theorem

* Author:
* Link:

## 49. The Cayley-Hamilton Thoerem

* Author:
* Link:

## 50. The Number of Platonic Solids

* Author:
* Link:

## 51. Wilson’s Theorem

* Author:
* Link:

## 52. The Number of Subsets of a Set

* Author:
* Link:

## 53. Pi is Trancendental

* Author:
* Link:

## 54. Konigsberg Bridges Problem

* Author:
* Link:

## 55. Product of Segments of Chords

* Author:
* Link:

## 56. The Hermite-Lindemann Transcendence Theorem

* Author:
* Link:

## 57. Heron’s Formula

* Author:
* Link:

## 58. Formula for the Number of Combinations

* Author:
* Link:

## 59. The Laws of Large Numbers

* Author:
* Link:

## 60. Bezout’s Theorem

* Author:
* Link:

## 61. Theorem of Ceva

* Author:
* Link:

## 62. Fair Games Theorem

* Author:
* Link:

## 63. Cantor’s Theorem

* Author:
* Link:

## 64. L’Hopital’s Rule

* Author:
* Link:

## 65. Isosceles Triangle Theorem

* Author:
* Link:

## 66. Sum of a Geometric Series

* Author:
* Link:

## 67. e is Transcendental

* Author:
* Link:

## 68. Sum of an arithmetic series

* Author:
* Link:

## 69. Greatest Common Divisor Algorithm

* Author:
* Link:

## 70. The Perfect Number Theorem

* Author:
* Link:

## 71. Order of a Subgroup

* Author:
* Link:
-->

## 72. Sylow’s Theorem

* **Partial progress**: Sylow's Theorem 1.
```lean
lemma exists_subgroup_card_pow_prime  {G : Type u} [group G] [fintype G] {p : ℕ} :
  ∀ {n : ℕ} (hp : nat.prime p) (hdvd : p ^ n ∣ card G),
  ∃ H : set G, is_subgroup H ∧ fintype.card H = p ^ n
```

* Author: Chris Hughes
* Link: https://github.com/leanprover-community/mathlib/blob/d935bc312fac7eca7ef08b16ca06079145b437f2/src/group_theory/sylow.lean#L184

<!--
## 73. Ascending or Descending Sequences

* Author:
* Link:

## 74. The Principle of Mathematical Induction

* Author:
* Link:

## 75. The Mean Value Theorem

* Author:
* Link:

## 76. Fourier Series

* Author:
* Link:

## 77. Sum of kth powers

* Author:
* Link:

## 78. The Cauchy-Schwarz Inequality

* Author:
* Link:

## 79. The Intermediate Value Theorem

* Author:
* Link:

## 80. The Fundamental Theorem of Arithmetic

* Author:
* Link:

## 81. Divergence of the Prime Reciprocal Series

* Author:
* Link:

## 82. Dissection of Cubes (J.E. Littlewood’s ‘elegant’ proof)

* Author:
* Link:

## 83. The Friendship Theorem

* Author:
* Link:

## 84. Morley’s Theorem

* Author:
* Link:

## 85. Divisibility by 3 Rule

* Author:
* Link:

## 86. Lebesgue Measure and Integration

* Author:
* Link:

## 87. Desargues’s Theorem

* Author:
* Link:

## 88. Derangements Formula

* Author:
* Link:

## 89. The Factor and Remainder Theorems

* Author:
* Link:

## 90. Stirling’s Formula

* Author:
* Link:

## 91. The Triangle Inequality

* Author:
* Link:

## 92. Pick’s Theorem

* Author:
* Link:

## 93. The Birthday Problem

* Author:
* Link:

## 94. The Law of Cosines

* Author:
* Link:

## 95. Ptolemy’s Theorem

* Author:
* Link: -->

## 96. Principle of Inclusion/Exclusion

```lean
lemma inclusion_exclusion {A : Type u} [fintype A] [decidable_eq A]
  {B : Type u} [fintype B] [decidable_eq B] (E : finset (A × B)) :
 ((clear_rows E).card : ℤ) =
  (@univ B _).powerset.sum (λ U, (card_sign U) * (card (col_inter E U)))
```
* Author: Neil Strickland
* Link: https://github.com/NeilStrickland/lean_lib/blob/f88d162da2f990b87c4d34f5f46bbca2bbc5948e/src/combinatorics/matching.lean#L304

<!-- ## 97. Cramer’s Rule

* Author:
* Link:

## 98. Bertrand’s Postulate

* Author:
* Link:

## 99. Buffon Needle Problem

* Author:
* Link:

## 100. Descartes Rule of Signs

* Author:
* Link:
-->