contract D {
	uint x;
}

contract C {
	uint y;
	function g() public {
		D d = new D();
		assert(y == 0); // should hold
	}
}
// ====
// SMTEngine: all
// SMTExtCalls: trusted
// ----
// Warning 2072: (72-75): Unused local variable.
