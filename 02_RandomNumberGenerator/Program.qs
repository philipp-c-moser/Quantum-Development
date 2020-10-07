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
    operation DisplayRandomNumberMessage() : Int {

        let maxValue = 100;

        Message($"Random Number between 0 and {maxValue} is: ");

        return 0;
    }
}
