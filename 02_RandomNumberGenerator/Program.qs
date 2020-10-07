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


    operation GenerateRandomNumber(maxValue : Int) : Int {

        return 0;

    }


    @EntryPoint()
    operation DisplayRandomNumberMessage() : Int {

        let maxValue = 100;

        Message($"Random Number between 0 and {maxValue} is: ");

        return GenerateRandomNumber(maxValue);
    }
}
