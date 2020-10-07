namespace RandomNumberGenerator {
    open Microsoft.Quantum.Canon;
    open Microsoft.Quantum.Intrinsic;
    open Microsoft.Quantum.Measurement;
    

    operation GenerateRandomBit() : Result {

        using (q = Qubit()) {
            H(q);

            return MResetZ(q);
        }
    }


    @EntryPoint()
    operation SayHello() : Unit {
        Message("Hello quantum world!");
    }
}
