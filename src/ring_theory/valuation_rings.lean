import algebra.ordered_group
import algebra.module

open ordered_add_comm_group

class totally_ordered_add_comm_group (α : Type*) extends add_comm_group α, linear_order α :=
(add_le_add_left       : ∀ a b c d : α, a > b ∧ c > d → a + c > b + d)

universe u
variable {α : Type u}

variables [totally_ordered_add_comm_group α] {a : α}
variables (n : ℕ)

theorem torsion_free_lem1 (hn : n > 0) (ha : a > 0) : n • a > 0 :=
begin
induction n with d hd,
end

theorem torsion_free_lem2 (ha : a < 0) : n • a < 0 := sorry

theorem torsion_free (hn : n ≠ 0) (hna : n • a = 0) : a = 0 :=
begin
have g := lt_trichotomy a 0,
assume h : a ≠ 0,
end
